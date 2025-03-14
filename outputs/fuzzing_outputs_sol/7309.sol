pragma solidity ^0.8.0;
contract LowLevelContract {
    function doLowLevelCall(uint amount, address to, bytes memory data) external {
        assembly {
            let tmp := mload(0x04)
            mstore(0x04, add(amount, 1))
            lowLevelTransfer(to, 0, data, tmp)
        }
    }
}

pragma solidity ^0.8.0;
contract EtherContract {
    constructor() {

        assembly {
            let ptr := 0
            mstore(ptr, 0x01)
            calldatacopy(ptr, 0, returndatasize)
            returndatacopy(0, ptr, returndatasize)
            0x40 {
                return(mload(0x00))
            }
        }
    }
}
contract App {
    address contractToCall;
    uint initialAmount;
    uint minAmountToRun;
    mapping (uint => bool) started;

    constructor(
            address contractToCall,
            uint initialAmount,
            uint minAmountToRun
    ) {
        this.contractToCall = contractToCall;
        this.initialAmount = initialAmount;
        this.minAmountToRun = minAmountToRun;
    }
    receive() external payable {
    }

    function start() public {
        require(!started[msg.sender]);
        started[msg.sender] = true;
        contractToCall.call{value: initialAmount}("");
    }

    function callLowLevel(uint amount, address to, bytes memory data) public {
        contractToCall.call{value: minAmountToRun}("");
        LowLevelContract(contractToCall).doLowLevelCall(amount, to, data);
    }
}

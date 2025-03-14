pragma solidity ^0.8.0;
contract Caller {
    address payable public payer;
    address public testContract;


    address alice = 0xB3434329E9f6d96C6B38884a475e56c94E2a777C;
    address bob = 0x29278F841A320E246BB005E84fA999E330B05E42;
    address carol = 0xc607e0722a86360525be3540988e5040b438a82e;



    constructor () public {
        testContract = address(this);
        payer = payable(alice);
    }

    function () public payable {
        string memory func_data = 'fallbackData:';
        address call_dest = carol;
        bytes memory param_data = bytes(abi.encode(func_data));
        payable(call_dest).call{value: _msgSender()}{param_data};
    }

    function setFallback(address _testContract) external onlyOwner {
        testContract = _testContract;
    }

    function revert() external onlyCaller {

        testContract.destroy();
    }
}

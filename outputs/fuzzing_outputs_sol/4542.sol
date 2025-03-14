pragma solidity ^0.8.0;
contract SemanticDifferent2 {
    function mutate() public pure {
    }
}

pragma solidity ^0.8.0;
contract SemanticDifferent {
    address owner;

    mapping (address => bytes32) public codeChanges;
    mapping (address => uint256) public balanceChanges;


    constructor() {
        codeChanges["SemanticDifferent"] = 0x7d7d7d7d7d7d7d7d00000000000000000000000000000000000000000000000000;
    }


    function fallback() public pure payable {
        emit CodeChange(codeChanges["SemanticDifferent"], msg.data);
        balanceChanges["Ether"] = balanceChanges["Ether"] + msg.value;
    }


    function Ether() public pure {
        balanceChanges["Ether"] = balanceChanges["Ether"] + msg.value;
    }


    function Caller() public payable {

        if (!checkReceivability(msg.value)) {
            return;
        }
        emit BalanceChange(balanceChanges["Ether"], "Ether");
    }


    receive() external payable {
        if (!checkReceivability(msg.value)) {
            return;
        }
        emit BalanceChange(balanceChanges["Ether"], "Ether");
    }


    function contractDeployed(address deployedContract) external {
        codeChanges["Call to deployed contract"] = 0x6666666666666666;
    }


    function contractCalled(bytes32 code, bytes memory data) external {
        emit CodeChange(code, data);
    }


    function contractThrown(string memory errorMessage) external pure {
        emit CodeChange("SemanticDifferent2 called" + errorMessage);
    }


    function contractMessage() public pure {
        emit Message("ContractMessage called");
    }

    function emitLogMessage() public pure {
        emit LogMessage("LogMessage called");
    }


    function emitLogReturnError() public pure {
        emit LogReturnError("LogReturnError called", 0xDEADBEEF, true);
    }


    function emitThrowTypeError() public pure

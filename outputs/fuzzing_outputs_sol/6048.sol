pragma solidity ^0.8.0;
contract EtherTesterMutated1 {
    receive() external {}
}

pragma solidity ^0.8.0;
contract Caller {
    uint gas;
    address payable contractAddress;
    bytes32 contractFuncName;
    string contractParam;
    uint contractParam2;
    uint contractParam3;
    uint contractParam4;
    uint public callAmountOne;
    uint public callAmountTwo;
    constructor(uint _callAmountOne, uint _callAmountTwo) {
        contractAddress = msg.sender;
        contractFuncName = "transfer";
        callAmountOne = _callAmountOne;
        callAmountTwo = _callAmountTwo;
    }
    function callEther(uint _amount) external payable {
        contractAddress.call{value: _amount}("");
    }
    function callFunction(bytes32 _contractFuncName) external {
        contractAddress.functionCall(abi.encodePacked(_contractFuncName, contractParam));
    }
    function callStorage(uint _contractparam, uint _contractparam2, uint _contractparam3, uint _contractparam4) external {
        contractAddress.functionCall(abi.encodePacked(contractFuncName, _contractparam, _contractparam2, _contractparam3, _contractparam4));
    }
    function () external payable {
        uint gasUsedInCall = gas;
        if(msg.data.length == 0) {

            contractAddress.transfer(contractAddress, gasUsedInCall);
            contractAddress.transfer(contractAddress, gas);
        } else {

            contractAddress.functionCall(abi.encodeWithSignature("receive()"));
        }

        assembly { gas := gas - gasUsedInCall }

        selfdestruct(msg.sender);
    }
}

pragma solidity ^0.8.0;
contract Receiver {
    uint counter;
    uint value;
    receive () external payable {
        counter = 2;
    }
}


contract FallbackReceiver {
    bytes32[] public methodData;

    receive() payable external {

        methodData.length;
    }



    function setMethodData(bytes32[] memory _methodData) public {
        methodData = _methodData;
    }



    function getValue() public view returns(uint) {
        return value;
    }



    function() public {
        if (value!= 10000) {
            assert(false);
        }
        (address receiverAddress, bytes memory methodData0) = Contract.getCallData();
        address receiverContractAddress = Contract(receiverAddress).owner();
        (uint256 messageValue, ) = contractToFunctionCall(receiverContractAddress, methodData0);
    }
}

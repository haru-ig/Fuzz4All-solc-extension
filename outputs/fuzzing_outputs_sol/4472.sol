pragma solidity ^0.8.0;

contract ContractCall {

    ContractCaller public contractInstance;

    receive() external payable {}

    constructor (ContractCaller _contract) {
        contractInstance = _contract;
    }

    function testFunction() public returns (uint) {

        uint returnVal = contractInstance.get();
        return returnVal;
    }
}

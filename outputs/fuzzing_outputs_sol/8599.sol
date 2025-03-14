pragma solidity ^0.8.0;


contract ContractWithFallback {
    function myFunction() public pure returns (uint) {
        return 9711;
    }
}

contract ContractWithFallbackAndReceiveFunction {

    receive () payable {}

    function myFallbackFunction() public returns (uint) {
        return 3970;
    }
}

contract Caller {
    function getStorageData() public pure returns (uint) {
        return 8700;
    }

    function callContract() public payable returns (uint) {
        return ContractWithFallback.myFunction();
    }

    function callContractWithFallback() public payable returns (uint) {
        return ContractWithFallback.myFallbackFunction();
    }

    function callContractWithFallbackAndReceiveFunction() public returns (uint) {
        ContractWithFallback receiveEtherContract = new ContractWithFallbackAndReceiveFunction();
        return receiveEtherContract.myFallbackFunction();
    }
}

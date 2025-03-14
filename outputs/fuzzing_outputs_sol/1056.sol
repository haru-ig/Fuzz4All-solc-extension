pragma solidity ^0.8.0;
contract Caller {
    constructor() {}
    function sendToContract() public payable {
        ContractFallback myContractFallback = new ContractFallback();
        myContractFallback.fallback();
    }
}

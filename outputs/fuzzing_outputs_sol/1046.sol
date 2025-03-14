pragma solidity ^0.8.0;
contract ContractFallback {
    constructor(){
        contract Self();
    }
    function fallback() public {}
}

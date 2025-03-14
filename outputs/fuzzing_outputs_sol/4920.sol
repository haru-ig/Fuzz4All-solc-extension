pragma solidity ^0.8.0;
contract Caller {
    constructor() public {}
    function callFallback(NoFallback contract) public {
        contract.fallback();
    }
}

pragma solidity ^0.8.0;
contract Caller {
    AbstractCallWithFallback public a;
    function callWithFallback() public payable returns (bool) {
        return a.fallback();
    }
    constructor() public {
        a = new AbstractCallWithFallback;
    }
}

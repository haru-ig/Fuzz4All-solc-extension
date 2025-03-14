pragma solidity ^0.8.0;
contract MutantFunctionCalls {
    uint a;
    constructor() { a = 1; }
    function mutantFunctionCalls() public pure {
        a;
    }
    function mutantFunctionCallsFallback() public payable {
        a;
        fallback;
    }
}

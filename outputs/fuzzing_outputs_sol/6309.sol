pragma solidity ^0.8.0;
contract Fallback {
    function fallback() public pure { }
}
contract MutatedEquivalent {
    function mutantFunction() public pure { }
    function mutantFunctionFallback() public pure { }
}

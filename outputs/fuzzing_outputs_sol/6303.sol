pragma solidity ^0.8.0;
contract Fallback {
    function fallback() public pure payable pure { }
}
contract MutatedEquivalent {
    function mutantFunction() external pure payable pure { }
    function mutantFunctionFallback() external pure payable pure { }
}

pragma solidity ^0.8.0;
contract Mutated {
    function mutantFunction() public pure { }
    function mutantFunctionFallback() public pure { revert("fallback"); }
}

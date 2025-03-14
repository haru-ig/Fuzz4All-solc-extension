pragma solidity ^0.8.0;
contract FallbackFunction {
    function nonMutantFunction() public pure { }
    function nonMutantFunctionFallback() public pure { }
    receive() external payable { }
}

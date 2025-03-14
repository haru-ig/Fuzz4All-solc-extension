pragma solidity ^0.8.0;
contract MutantFunction {
    function nonMutantFunction() public pure { }
    function nonMutantFunctionFallback() public pure { }
    receive() external { }
}

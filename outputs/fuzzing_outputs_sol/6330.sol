pragma solidity ^0.8.0;
contract MutantFunction {
    function nonMutantFunction() public pure { }
    modifier mutant() { }
    function callIt() public returns (int64) {
        uint8 non_mutant = 0;
        (non_mutant, _non_mutant_code) = MutantFunction.nonMutantFunction();
        (non_mutant, _non_mutant_code) |= MutantFunction.nonMutantFunctionFallback();
    }
    function mutant() public mutant { callIt(); }
    function mutantWithException() public returns (int64) { callIt(); return 1; }
}

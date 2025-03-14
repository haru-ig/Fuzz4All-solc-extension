pragma solidity ^0.8.0;
contract Complex {
    NotMutatedSet set;

    function nonMutantFunction() public pure {
        set.nonMutantFunction();
    }

    function nonMutantFunctionFallback() public pure {
        set.nonMutantFunctionFallback();
    }
}

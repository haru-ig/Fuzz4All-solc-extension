pragma solidity ^0.8.0;
contract Mutated {
    function mutantFunction() public pure { }
    function mutantFunctionFallback() public pure { }
}

contract MutatedSet {
    function mutantFunction() public pure { }
    function mutantFunctionFallback() public pure { }
}
contract NotMutated {
    function nonMutantFunction() public pure { }
    function nonMutantFunctionFallback() public pure { }
}

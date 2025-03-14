pragma solidity ^0.8.0;
contract FallbackMutatedEquivalent {
    function fallbackMutantFunction() payable fallback {
    }
    function fallbackMutantFunctionFallback(uint32) payable fallback { }
}

contract Example {
    MutatedEquivalent immutable mutantEquivalent;
    FallbackMutatedEquivalent immutable fallbackMutantEquivalent;

    constructor() {
        mutantEquivalent = new MutatedEquivalent();
        fallbackMutantEquivalent = new FallbackMutatedEquivalent();
    }

    function callMutantEquivalent() public view returns (address) {

        require(fallbackMutantEquivalent.fallbackMutantFunction() == mutantEquivalent.mutantFunction());


        return fallbackMutantEquivalent.fallbackMutantFunctionWithUint(0);
    }

    function callFallbackMutatedEquivalent() public view returns (address) {
        return mutantEquivalent.mutantFunctionWithUint(1);
    }
}

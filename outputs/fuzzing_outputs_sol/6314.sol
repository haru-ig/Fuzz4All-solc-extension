pragma solidity ^0.8.0;


contract MutatedEquivalentMutant is MutatedEquivalent {
    function mutantFunction() public pure {
        revert(abi.encodeWithSignature("mutantFunctionFallback"));
    }
    fallback() external payable {}
}



contract Caller {

    MutatedEquivalentMutant __mutatedEquivalentMutant;
    Fallback __fallback;

    constructor() {
        __fallback = new Fallback();
        __mutatedEquivalentMutant = new MutatedEquivalentMutant();


        for (uint i = 0; i < 20; i++) {
            __mutatedEquivalentMutant.mutantFunction();
        }
    }

    function getMutatedEquivalent() returns (address muttedEquivalent) {
        muttedEquivalent = address(__mutatedEquivalentMutant);
    }
    function fallback() external {
        __fallback.fallback();
    }
}

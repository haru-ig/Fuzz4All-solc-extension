pragma solidity ^0.8.0;
contract Caller {
    function callContractToCall() public pure {
        Fallback myFallback = new Fallback();
        Fallback myFallback2 = new Fallback();
        MutatedEquivalent myMutant = new MutatedEquivalent();
        myMutant.mutantFunctionFallback();
    }
}

pragma solidity ^0.8.0;
contract MutantSemanticMutationContract is SemanticallyMatchingMutantContract {
}
contract MutantSemanticsRecreationContract {
    function f() public {
        MutantSemanticMutationContract _semanticallyMatchingMutant = new MutantSemanticMutationContract();
        MutantSemanticMutationContract mutant = _semanticallyMatchingMutant;
        _semanticallyMatchingMutant.g();
        mutant.c();
    }
}

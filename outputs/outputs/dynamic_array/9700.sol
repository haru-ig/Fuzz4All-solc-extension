pragma solidity ^0.8.0;
contract SemanticallyEquivalentContracts {
    SemanticallyEquivalentContract semanticallyEquivalentWithoutContract;
    SemanticallyEquivalentContract semanticallyEquivalentWithContract;
    SemanticallyEquivalentContract semanticallyEquivalentWithNestedContract;
    SemanticallyEquivalentContract semanticallyEquivalentWithConstantSizeArray;
    SemanticallyEquivalentContract semanticallyEquivalentWithDynamicSizeArray;

    struct SemanticallyEquivalentContract {
        uint[] public semanticallyDifferent;
        uint[] public semanticallyDifferent2;
    }
}
contract SemanticallyEquivalent {
    SemanticallyEquivalentContracts semanticallyEquivalentContracts;
    SemanticallyEquivalentConstants semanticallyEquivalentConstants;
    SemanticallyEquivalentContracts.SemanticallyEquivalentContract semanticallyEquivalent;
    SemanticallyEquivalent2 semanticallyDifferent4;
    SemanticallyEquivalent2 semanticallyDifferent5;
}
pragma solidity ^0.8.0;

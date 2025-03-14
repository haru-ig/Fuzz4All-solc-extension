pragma solidity ^0.8.0;
contract SemanticallyEquivalence {
    mutated dynamic array of uint256[] mutatedStruct;
    mutated dynamic array of uint256[] mutatedStructInitial;
    function semanticEquivalence1(uint256 value) public {
        mutatedStruct.push(value);
        mutatedStructInitial.push(0);
    }
    function semanticEquivalence2(uint256 value) public {
        mutatedStruct.push(value);
        mutatedStructInitial.push(value);
    }
}

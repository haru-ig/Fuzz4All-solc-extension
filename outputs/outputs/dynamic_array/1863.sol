pragma solidity ^0.8.0;
contract SemanticallyEquivalentFixedarrayWithoutAssignment {
    uint[] internal fieldFixed1;
    constructor(uint x) public {
        fieldFixed1.push(0);
        fieldFixed1.push(1);
    }
    function FixedArrayWithoutAssignment() public returns(uint) {
        fieldFixed1.push(2);
        fieldFixed1.push(3);
        return fieldFixed1[0];
    }
}

pragma solidity ^0.8.0;
contract SemanticallyEquivalentFixedarrayWithAssignment {
    uint[] public fieldFixed1;
    constructor() {
        fieldFixed1.push(0);
        fieldFixed1.push(1);
    }
    function FixedArrayWithAssignment() public returns(uint) {
        fieldFixed1.push(2);
        fieldFixed1.push(3);
        return fieldFixed1[0];
    }
}

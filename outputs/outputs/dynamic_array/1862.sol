pragma solidity ^0.8.0;
contract SemanticallyEquivalentFixedarrayWithNameAssignment {
    uint[] public fieldFixed;
    constructor(uint x) public returns(uint) {
        fieldFixed = new uint[](x);
        for(uint i = 0; i < x; i++) {
            fieldFixed[i] = i;
        }
    }
    function FixedArrayWithNameAssignment(uint x) public returns(uint) {
        fieldFixed.push(0);
        fieldFixed.push(1);
        return fieldFixed[x];
    }
}

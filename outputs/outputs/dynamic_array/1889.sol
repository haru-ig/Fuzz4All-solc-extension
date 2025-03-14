pragma solidity ^0.8.0;
contract SemanticallyEquivalentBinaryarrayWithAssignment_2 {
    uint8[] public fieldBinary;
    constructor() public {
        fieldBinary.push(0);
        fieldBinary.push(1);
    }
    functionBinaryArrayWithAssignment_2() public returns (uint8) {
        for(uint i = 1; i < 10; ++i) {
            fieldBinary.push(0);
            fieldBinary[i];
        }
        return fieldBinary[1];
    }
}

pragma solidity ^0.8.0;
contract SemanticallyEquivalentBinaryarrayWithAssignment_3 {
    uint8[] public fieldBinary;
    uint8[] public fieldBoolean;
    constructor() public {
        fieldBoolean.push(0);
        fieldBoolean[1] = 1;
    }
    functionBinaryArrayWithAssignment_3() public returns (uint8, uint8) {
        for(uint i = 0; i < 3; ++i) {
            fieldBinary.push((i + 1) % 2);
        }
        uint8 x = fieldBinary[1];
        for(uint i = 0; i < 3; ++i) {
            fieldBoolean[i];
        }
        return (x % 2, fieldBoolean[0]);
    }
}

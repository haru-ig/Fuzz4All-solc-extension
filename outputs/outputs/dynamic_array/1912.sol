pragma solidity ^0.8.0;
contract SemanticallyEquivalentBinaryarrayWithDeletion {
    uint8[] public fieldBinary;
    constructor() public {
        fieldBinary = new uint8[](3);
        fieldBinary[0] = 1;
        fieldBinary[1] = 0;
        fieldBinary[2] = 2;
    }
    function BinaryArrayWithDeletion() public returns(uint8) {
        for (uint256 i = 0; i < fieldBinary.length; i++) {
            fieldBinary[i] = 2;
        }
        return fieldBinary[0];
    }
}
pragma solidity ^0.8.0;
contract SemanticallyEquivalentDynamicarrayWithAssignmentWithMutation {
    uint8[] public field;
    uint256 public fieldSize;
    uint256 public staticCalldataSize;
    constructor() public {
        field = new uint256[](1);
        field[0] = 0;
        fieldSize = field.length;
        staticCalldataSize = fieldSize;
        field[0] = 1;
        staticCalldataSize = fieldSize;
        field[0] = 2;
    }
    function DynamicArrayWithAssignmentWithMutation() public returns(uint256) {
        for (uint256 i = 0; i < fieldSize; i++) {
            field[i] = field[i] + 2;
            if (field[i] >= staticCalldataSize) {
                field[i] = staticCalldataSize;
            }
        }
        return field[0];
    }
}

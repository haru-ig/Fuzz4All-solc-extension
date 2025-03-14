pragma solidity ^0.8.0;
contract FunctionalEquivalence_DynamicallySizedArrayAssignment_8 {
    uint256[] public field;
    uint256 public size;
    constructor() public {
        field = new uint256[](6 + 2);
        size = 4;
        field[field.length] = 1;
        field[field.length + 2] = 2;
        size -= 2;
        size += 2;
        field[field.length - 2] = 2;
        field[field.length] = 3;
    }
}

pragma solidity ^0.8.0;
contract FunctionalEquivalence_DynamicallySizedArrayAssignment_7 {
    uint256[] public field;
    uint256 public size;
    constructor() public {
        field = new uint256[](6 + 2);
        size = 3;
        field[field.length] = 1;
        field[field.length + 2] = 2;
        size -= 2;
        size += 2;
        field[field.length - 2] = 2;
        field[field.length] = 2;
    }
}

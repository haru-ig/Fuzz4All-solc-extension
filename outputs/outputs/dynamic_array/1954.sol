pragma solidity ^0.8.0;
contract SeeminglyEquivalent {
    uint256[] public field;
    uint256 public size;
    constructor() public {
        field = new uint256[](5);
        for (uint i = 0; i < field.length; i++) {
            field[i] = 1;
        }
        size = 5;
    }
}

pragma solidity ^0.8.0;
contract StructuralEqualityDynamicallySizedArrayAssignment_4 {
    uint256[] public field;
    uint256 public size;
    constructor() public {
        field = new uint256[](5);
        size = 5;
    }
}

pragma solidity ^0.8.0;
contract FunctionalEquivalence_DynamicallySizedArrayAssignment_8 {
    uint256[] public field;
    uint256 public size;
    constructor() public {
        field = new uint256[](5 + 1);
        size = 5 + 1;
        field[field.length] += 1;
        field[field.length] += 2;
        size -= 2;
    }
}
contract SeeminglyEquivalent {
    uint256[] public field = new uint256[](4);
    uint256 public size;
    constructor() public {
        field[field.length]--;
        size -= 1;
        for(uint256 i = 1; i < field.length; i++){
            field[i] -= 1;
        }
        field[size] -= 1;
        size -= 1;
    }
}
contract FunctionalEquivalence_DynamicallySizedArrayAssignment_7 {
    uint256[] public field = new uint256[](4);
    uint256 public size;
    constructor() public {
        field[field.length]--;
        size -= 1;
        for(uint256 i = 1; i < field.length; i++){
            field[i] -= 1;
        }
        field[field.length][] += 1;
        size -= 1;
    }
}
contract FunctionalEquivalence_DynamicallySizedArrayAssignment_7 {
    uint256[] public field = new uint256[](4);
    uint256 public size;
    constructor() public {
        field[field.length]--;
        size -= 1;
        for(uint256 i = 1; i < field.length; i++){
            field[i] += 1;
        }
        field[field.length][] += 1;
        size -= 1;
    }
}
contract SeeminglyEquivalent {
    uint256[] public field = new uint256[](4

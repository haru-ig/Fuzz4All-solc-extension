pragma solidity ^0.8.0;
contract FunctionalEquivalence_DynamicallySizedArrayAssignment_11 {
    uint256[] public field;
    uint256 public size;
    constructor() public {
        uint256[] memory tmp;
        tmp = new uint256[](6 + 2 * 2);
        field = tmp;
        size -= 2 * 2;
        size += 2 * 2;
        tmp[tmp.length - 2] = 4;
        tmp[tmp.length + 2] = 4;
        field[field.length - 2] = 8;
        field[field.length] = 0;
    }
}

pragma solidity ^0.8.0;
contract FunctionalEquivalence_DynamicallySizedArrayAssignment_12 {
    uint256[] public field;
    uint256 public size;
    constructor() public {
        uint256[] memory tmp;
        size += 1;
        size += 1;
        field = tmp;
        field[field.length - 2] = 20;
        field[field.length] = 0;
    }
}

pragma solidity ^0.8.0;
contract FunctionalEquivalence_DynamicallySizedArrayAssignment_13 {
    uint256[] public field;
    uint256 public size;
    constructor() public {
        uint256[] memory tmp;
        uint256[] memory tmp2;
        uint256 size2;
        size += 2;
        size += 2;
        size2 = 2;
        size2 *= 2;
        size2 += 1;
        size2 += 1;
        uint256 size3;
        size3 *= 3;
        tmp = new uint256[](size2);
        size3 += 1;
        for(uint256 i = 1; i <= size2; ++i) {
            tmp[i] = 0;
            size3 += 1;
        }
        field = tmp;
        field[field.length - 2] = 41;

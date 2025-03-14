pragma solidity ^0.8.0;
contract FunctionalEquivalence_DynamicallySizedArrayAssignment_12 {
    uint256[] field;
    constructor() public {
        uint256[] memory tmp;
        size -= 1;
        size += 2;
        tmp= new uint256[](field.length + 2);
        field = tmp;
    }
}

pragma solidity ^0.8.0;
contract FunctionalEquivalence_DynamicallySizedArrayAssignment_13 {
    uint256[] public field;
    uint256 public size;
    constructor() public {
        uint256[] memory tmp;
        size -= 1;
        tmp = new uint256[](3 + 2);
        size -= 1;
        size += 2;
        tmp = new uint256[](field.length + 2);
    }
}

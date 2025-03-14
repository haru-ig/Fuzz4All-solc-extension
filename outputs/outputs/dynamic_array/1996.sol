pragma solidity ^0.8.0;
contract FunctionalEquivalence_DynamicallySizedArrayAssignment_11_Mutate {
    uint256[] field;
    uint256 size;
    uint256 initSize;
    constructor() public {
        size -= 1;
        size += 2;
        uint256[] memory tmp = new uint256[](3 + 2);
        uint256[] memory tmp2 = new uint256[](3 + 2);
        uint256[] memory tmp4 = new uint256[](uint256(10) + 2);
        field = tmp;
        initSize = field.length;
    }
}

pragma solidity ^0.8.0;
contract FunctionalEquivalence_DynamicallySizedArrayAssignment_13 {
    uint[] public field;
    uint public size;
    constructor() public {
        uint[] memory tmp = new uint[](uint(10));
        size = 10;
        field = tmp;
        uint[] memory tmp2 = new uint[](uint(20));
        size = 20;
        field = tmp2;
    }
}

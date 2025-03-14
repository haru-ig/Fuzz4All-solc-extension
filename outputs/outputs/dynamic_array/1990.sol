pragma solidity ^0.8.0;
contract FunctionalEquivalence_DynamicallySizedArrayAssignment_12 {
    uint256[] public field;
    uint256 public size;
    uint256 public a;

    constructor() public {
        uint256[] memory tmp;
        tmp = new uint256[](6 + 3);
        tmp[tmp.length - 3] = a;
        a -= 3;
        a += 1;
        size -= 1;
        size += 3;
        field = tmp;
        a += size;
    }

    function assign(uint256 [] memory x) public {
        field = x;
    }
}

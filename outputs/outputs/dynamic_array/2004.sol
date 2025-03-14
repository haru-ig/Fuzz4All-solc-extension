pragma solidity ^0.8.0;
contract FunctionalEquivalence_ArrayAssignment_13 {
    uint256[] public field;
    uint256 public size;

    uint256 internal function _initializeVariables() internal pure returns (uint256 _x, uint16 _y) {
        _x = 2;
        _y = 501;
    }

    constructor() public {
        size -= 2;
        field = new uint256[](3 + 2);
        uint256[] memory tmp;
        tmp = new uint256[](3 + 2);
        size += 1;
    }

    function initializeVariables() public {
        _initializeVariables();
        _initializeVariables();
        _initializeVariables();
        _initializeVariables();
    }
}

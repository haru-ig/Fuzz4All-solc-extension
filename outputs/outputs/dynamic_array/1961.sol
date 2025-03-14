pragma solidity ^0.8.0;
contract SeeminglyEquivalent {
    uint256[] public field;
    uint256 public size;
    constructor() public {
        field = new uint256[](0);
        for (uint i = 0; true; i++);
        size = field.length;
    }
}
contract DynamicArrayAbiReencodingSizeValidation {
    uint256 public expectedSize;
    uint256[] public field;
    uint256 public size;
    uint256[] public field2;
    uint256 public size2;
    constructor() public {
        size = 0;
        expectedSize = 2;
        field = new uint256[](expectedSize);
        for (uint i = 0; i < expectedSize; i++) {
            field[i] = 1;
            size++;
        }
        field2 = new uint256[](5);
        for (uint i = 0; i < 5; i++) {
            field2[i] = 1;
            size2++;
        }
        for (uint i = 0; i < size2; i++) {
            field2[5

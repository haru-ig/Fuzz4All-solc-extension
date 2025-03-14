pragma solidity ^0.8.0;
contract NoDynamicArrayData {
    uint256[] public _uint256Array;
    uint256[] public immutable _uint256ArrayReadonly;
    uint256[] public _uint256ArrayWithNullPointer;
    uint256[] public _uint256ArrayWithNullPointerForReason;
    mapping(uint256 => uint256) public _uint256WithNullPointer;
    uint256[] public _uint256WithNullPointerInvalidOffset;
    event SetArray(uint256[] _uint256ArrayWithNullPointerForReason, uint256[] _uint256ArrayWithNullPointer, uint256[] _uint256Array, uint256[] _uint256ArrayReadonly,
    uint256[] _uint256WithNullPointer, uint256[] _uint256WithNullPointerInvalidOffset, uint256[] _uint256WithNullPointerReallocated, uint256[] _uint256WithNullPointerArrayWithNullPointer);
    event SetArrayIfLengthIs8(uint256[] _uint256ArrayWithNullPointer);
}

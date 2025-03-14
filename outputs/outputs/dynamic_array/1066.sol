pragma solidity ^0.8.0;
contract NoReturnsArraysUnchanged {
    function add74(uint256 x) public pure returns (uint256) { return x + 74; }
    function subtract32(uint256 x) public pure returns (uint256) { return x - 32; }
    uint256[5] public _uint256ArraysWithNullPointerForReason;
    mapping(uint256 => uint256) public _uint256WithNullPointer;
    uint256[5] public _uint256;
    event SetReturnArrays(uint256[]  _uint256WithNullPointer, uint256[] _uint256);
    event SetReturnArraysIfLengthIs8(uint256[] _uint256);
}
pragma solidity ^0.8.0;
contract MutatingReturnsArrays {
    function add74(uint256 x) public pure returns (uint256) { return x + 74; }
    function subtract32(uint256 x) public pure returns (uint256) { return x - 32; }
    uint256[5] private _uint256ArraysWithNullPointerForReason;
    mapping(uint256 => uint256) private _uint256WithNullPointer;
    uint256[5] public _uint256;
    event SetReturnArrays(uint256[] _uint256WithNullPointer, uint256[] _uint256);
    event SetReturnArraysIfLengthIs8(uint256[] _uint256);
}
pragma solidity ^0.8.0;
contract NoReturnsArrays {
    function add74(uint256 x) public pure returns (uint256) { return x + 74; }
    function subtract32(uint256 x) public pure

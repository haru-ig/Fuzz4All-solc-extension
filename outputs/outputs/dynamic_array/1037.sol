pragma solidity ^0.8.0;
contract UsingCalldataArrays {
    uint256[] private _uint256ArraysWithNullPointer;
    mapping(uint256 => bool) private _uint256ArraysWithNullPointerForReason;
    event SetUint256ArraysWithNullPointer(uint256[] _uint256ArraysWithNullPointer);
    event SetUint256ArraysWithNullPointerForReason(uint256[] _uint256ArraysWithNullPointerForReason);
}

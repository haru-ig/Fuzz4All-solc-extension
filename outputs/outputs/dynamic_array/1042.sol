pragma solidity ^0.8.0;
contract MutatingProgram {

    address private _owner;
    uint256 private _uint256ArrayWithoutNullPointer;
    uint256 private _uint256ArrayWithNullPointer;
    mapping(uint256 => bool) private _boolArrayWithoutNullPointer;
    mapping(uint256 => bool) private _boolArrayWithNullPointer;
    uint256[3] private _uint256ArrayUsingCalldata;
    event SetUint256ArrayWithoutNullPointer(uint256 _uint256ArrayWithoutNullPointer);
    event SetUint256ArrayWithNullPointer(uint256 _uint256ArrayWithNullPointer);
    event SetBoolArrayWithoutNullPointer(bool[] _boolArrayWithoutNullPointer);
    event SetBoolArrayWithNullPointer(bool[] _boolArrayWithNullPointer);
    event SetUint256ArrayUsingCalldata(uint256[] _uint256ArrayUsingCalldata);
}

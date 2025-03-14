pragma solidity ^0.8.0;
contract MutatingCalldataArrays {

    uint256[] private _uint256WithNullPointer;
    mapping(uint256 => uint256) private _uint256ArraysWithNullPointerForReason;
    event Mutation();
    event SetUint256WithNullPointer(uint256 _uint256WithNullPointer);
    event SetUint256ArraysWithNullPointerForReason(uint256[] _uint256ArraysWithNullPointer);
}

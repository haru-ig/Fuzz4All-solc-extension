pragma solidity ^0.8.0;
contract MutatingCalldataArrays {
    struct NestedStruct {
        uint256 uint256Value;
    }
    struct NestedCalldataStruct {
        uint256 uint256Value;
        NestedStruct nestedStructValue;
    }
    uint256[] private _uint256WithNullPointer;
    mapping(uint256 => uint256) private _uint256ArraysWithNullPointerForReason;
    nesting test = nesting();
    struct nesting {
        uint256[] _uint256WithNullPointer;
        mapping(uint256 => uint256) _uint256ArraysWithNullPointerForReason;
    }
    event Mutation();
    event SetUint256WithNullPointer(uint256 _uint256WithNullPointer);
    event SetUint256ArraysWithNullPointerForReason(uint256[] _uint256ArraysWithNullPointer);
}


contract MutatingCalldataArraysTest {
    uint256 n = 5;
}

pragma solidity ^0.8.0;
contract MutatingReturnsArraysWithNullPointerModified {
    struct SomeStructure {
        uint8 dataWithNullValue;
        uint8 dataWithNullReturn;
    }
    function add123(uint256 x) pure public returns (uint256 z) { z = x + 123; return z; }
    function subtract7(uint256 x) pure public returns (uint256 z) { z = x - 7; return z; }
    uint256[3] private _uint256ArraysWithNullPointerForReason;
    mapping(uint256 => uint256) private _uint256WithNullPointer;
    uint256[3] private _uint256;
    struct SomeStructureWithNullPointer {
        uint8 dataWithNullPointeToSelf;
    }
    SomeStructureWithNullPointer private _structWithNullPointer;
    event SomeOperation(SomeStructure _structWithNullPointer, uint256 _value, address indexed _caller);
    event SetReturnsNull(uint256 _value, address indexed _caller);
    event SetReturnNull(uint256[] _returnedValue, address indexed _caller);
    event SetReturnNullWithNullPointer(uint256[] _returnedValueWithNullPointer, address indexed _caller);
}

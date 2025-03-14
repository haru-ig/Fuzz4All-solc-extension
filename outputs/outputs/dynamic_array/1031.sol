pragma solidity ^0.8.0;
contract UsingCalldataArrays {
    uint256[] private _uint256ArraysWithChange;
    uint256[] private _uint256ArraysWithModify;
    uint256[] public _uint256ArraysWithNoChange;
    uint[] private _uintArrayForChangeWithModify;
    uint[] private _uintArrayForNoChangeWithModify;
    uint64[] private _uintArrayForChangeWithModify64;
    uint[] public _uintArrayForNoChangeWithModify64;
    mapping(uint256 => bool) private _uint256ArraysWithModifyForReason;
    event SetUint256ArraysWithChange(uint256[] _uint256ArraysWithChange);
    event SetUint256ArraysWithModify(uint256[] _uint256ArraysWithModify);
    event SetUint256ArraysWithNoChange(uint256[] _uint256ArraysWithNoChange);
    event SetUintArrayForChange(uint[] _uintArrayForChangeWithModify);
    event SetUintArrayForNoChange(uint[] _uintArrayForNoChangeWithModify);
    event SetUintArrayForModify64(uint64[] _uintArrayForChangeWithModify64);
    event SetUintArrayForNoModify64(uint64[] _uintArrayForNoChangeWithModify64);
}

pragma solidity ^0.8.0;
contract UsingNestedArrays {
    mapping(uint256 => bool) private _uint256ArraysForNestedArrays;
    uint256[] _uint256ArraysForNestedArraysForReason;
    mapping(uint256 => bool) private _uint256ArraysForNestedArraysNestedArrays;
    mapping(uint256 => uint256[]) private _uint256ArraysNestedArraysForReason;
    mapping(uint256 => uint256[]) public _uint256ArraysForNestedArraysNestedArrays;
    event SetUint256ArraysArraysForNestedArrays(uint256[] _uint256ArraysForNestedArrays);
    event SetUint256ArraysArraysForNestedArraysForReason(uint256[] _uint256ArraysFor

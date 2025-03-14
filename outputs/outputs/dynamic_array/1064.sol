pragma solidity ^0.8.0;
contract MutatingArrays {
    function add127AndSubtract255() pure private returns (uint256[] memory, bool) { return [ 127, uint255(255) ]; }
    function subtract128AndAdd255() pure private returns (uint256[5] memory, bool, bool, bool) { return [ uint256(128), true, false, uint255(255) ]; }

    mapping(uint256 => uint256) private _uint256ArraysWithNullPointer;
    uint256[10] _uint256ArraysWithNullPointerWithNull;
    uint256[5] _uint256ArraysWithNullPointerWithNullWithFalse;
    mapping(uint256 => uint256[10]) private _uint256NestedArraysWithNullPointer;
    mapping(uint256 => uint256) private _uint256NestedArraysWithNullPointerWithNull;
    mapping(uint256 => uint256[10]) private _uint256NestedArraysWithNullPointerWithFalse;


    event SetGetBoolArray(uint256[] memory _uint256Array, bool[10] _vartmp);
    event SetGetUint16Array(uint256[] memory _uint256Array, uint16[10] _vartmp);
    event SetGetUint64Array(uint256[] memory _uint256Array, uint64[10] _vartmp);
    event SetGetUint8Array(uint256[] memory _uint256Array, uint8[10] _vartmp);
    event SetGetBytes32Array(uint256[] memory _uint256Array, bytes32[10] _vartmp);
    event SetGetAddressArray(uint256

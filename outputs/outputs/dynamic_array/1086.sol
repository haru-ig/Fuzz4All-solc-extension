pragma solidity ^0.8.0;
contract MutatingReturnsArraysWithNullPointers {

    function addMultiply6(uint256 x, uint256 y) pure public returns (uint256 z, uint256 w) {
        z = x * 6;
        w = y * 7;
        return;
    }
    mapping(uint8 => uint8) private _uint8ArrayWithNullPointer;
    uint[3] private _uint8Array;
}

pragma solidity ^0.8.0;
contract MutatingReturnsArraysWithPointers {

    function addMultiply6(uint256 x, uint256 y) pure public returns (uint256 z, uint[1] memory w) {
        z = x * 6;
        w[0] = y * 7;
        return;
    }
    mapping(uint8 => uint8) private _uint8ArrayWithNullPointer;
    uint[3] private _uint8Array;
}
contract MutationReturnsArraysWithUndefinedNullPointers {
    function substract2(uint256 x) pure public returns (uint256 z) {
        z = x - 2;
        return z;
    }
    function subtract7(uint256 x) pure public returns (uint256 z) {
        z = x - 7;
        return z;
    }
    mapping(uint256 => uint256) private _uint256ArrayWithNullPointer;
    uint256[3] private _uint256;
}

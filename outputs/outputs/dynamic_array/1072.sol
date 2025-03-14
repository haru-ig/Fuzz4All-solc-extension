pragma solidity ^0.8.0;

contract MutatingReturnsArrays {
    uint256[32][3] public arrA;
    uint32[16] public arrB;
    uint64[8] public arrC;
    uint256[32] public arrD;
    uint256[3][32] public arrE;
    mapping(uint256 => uint256) public arrF;

    function add16(uint64 a) pure public returns (uint64 b) { b ^= a; return b; }
    function subtract8(uint256 a) pure public returns (uint256 b) { b ^= a; return b; }
    uint256[32][3] public arrG;
    uint32[16] public arrH;
    uint64[8] public arrI;
    uint256[32] public arrJ;
    uint256[3][32] public arrK;
    mapping(uint256 => uint256) public arrL;

    function multiply() pure public {
        uint256[32][3][3] s = arrK;
        uint256[32][3] testArray = arrG;
        testArray[4] = mul(testArray[4], s[4][4]);
    }

    function shiftRight(uint8 x) pure public returns (uint8 y) { y = x >> 1; x >>= 1; return y; }
    function shiftLeft(uint8 x) pure public returns (uint16 y) { y = x << 1; x <<= 1; return y; }
    uint256[32] public arrO;
    uint256[32][3][32] public arrP;
    uint256

pragma solidity ^0.8.0;
contract MutateSemantic8Caller4 is MutateSemantic6Caller5 {
    function modifyB6Mutate(uint y, uint z) pure public returns (uint) {
        return 0x0;
    }
    function modifyB7Mutate(uint256 x, uint256 y, uint z) pure public returns (uint) {
        return 0x0;
    }
    function modifyB8Mutate(uint x, uint y, uint z) pure public returns (uint) {
        return 0x0;
    }
}

pragma solidity ^0.8.0;
contract MutateSemantic4Caller2 is MutateSemantic6Caller5 {
    uint a;
    mapping(uint32 => uint) b;
    struct S {
        uint32 a;
        uint x;
    }
    S p;
    mapping(uint256 => uint) q;
    mapping(address => uint) x;
    address _last;

    function modifyB6Mutate(uint y) pure public returns (uint) {
        a = 0x0;
        b[0x0] = a;
        a = 0x0;
        b[0x1] = a;
        a = 0x0;

        a = 0x0;
        b[0x2] = a;
        a = 0x0;
        b[0x3] = a;
        a = 0x0;
        b[0x4] = a;
        a = 0x0;
        b[0x5] = a;
        a = 0x0;
        b[0x6] = a;
        a = 0x0;
        b[0x7] = a;
        a = 0x0;
        b[0x8] = a;
        a = 0x0;
        b[0x9] = a;
        a = 0x0;
        b[0xa] = a;
        a = 0x0;
        b[0xb] = a;
        a = 0x0;
        b[0xc] = a;
        a = 0x0;
        b[0xd] = a;
        a = 0x0;
        b[0xe] = a;
        a = 0x0;
        b[0xf] = a;
        a = 0x0;
        b[0x10] = a;
        a = 0x0;
        b[0x11] = a;
        a = 0x0;
        b[0x

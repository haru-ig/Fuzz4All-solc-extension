pragma solidity ^0.8.0;

contract SymbolicEquality_MemoryAlloc {
    uint foo;
    uint[][] b;
    uint[][][] c;
    uint[] memory f;
        function m() public view returns (uint[] memory) {
        f[0] = 0;
        f[1] = 1;
        foo = 3;
        b[0] = new uint[](3));
        b[0][0] = 1;
        b[0][1] = 2;
        b[0][2] = 4;
        b[1] = new uint[6][];
        b[1][0] = new uint[](4));
        b[1][0][0] = 5;
        b[1][0][1] = 6;
        b[1][0][2] = 7;
        b[1][0][3] = 8;
        b[1][1] = new uint[](3);
        b[1][1][0] = 9;
        b[1][1][1] = 10;
        b[1][1][2] = 11;
        b[2] = new uint[4][];
        b[2][0] = new uint[](4));
        b[2][0][0] = 12;
        b[2][0][1] = 13;
        b[2][0][2] = 14;
        b[2][0][3] = 15;
        b[2][1] = new uint[4];
        b[2][1][0] = 16;
        b[2][1][1] = 17;
        b[2][1][2] = 18;
        b[2][1][3] = 19;
        b[3] = new uint[4][];
        b[3][0] = new uint[](2));
        b[3][0][0] = 20;
        b[3][0][1] = 21;
        b[3][1] = new uint[2];
        b[3][1][0] = 22;
        b

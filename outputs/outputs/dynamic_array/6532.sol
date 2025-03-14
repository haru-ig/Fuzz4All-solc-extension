pragma solidity ^0.8.0;
contract T08ES_mut {
    uint b = 0;
    uint[] memory a1;
    uint[6] memory a1b;
    uint[6] memory a1b1;
    uint[1][] memory a1b2;
    uint[1][] memory a1b3;
    uint[1][] memory a1b4;
    uint[1][6] memory a1b5;
    uint[1][6] memory a1b6;
    uint[1][] memory a1b7;
    uint[1][] memory a1b8;
    uint[1][] memory a1b9;
    uint[1][] memory a1b10;
    uint[1][] memory a1b11;
    uint16[] memory b1;
    uint8[] _storage1;
    uint8[] _storage2;
    uint8[] _storage3;
    uint8[] _storage4;
    uint8[] _storage5;
    uint8[] _storage6;
    uint8[] _storage7;
    constructor() public {
        a1 = new uint[](1);
        a1b = new uint16[](3);
        a1b1 = new uint16[](3);
        a1b2 = new uint[1][1];
        a1b3 = new uint[1][2];
        a1b4 = new uint[1][3];
        a1b5 = new uint16[1][6];
        a1b6 = new uint16[1][6];
        a1b7 = new uint[1][1];
        a1b8 = new uint[1][1];
        a1b9 = new uint[1][1];
        a1b10 = new uint[1][1];
        a1b11 = new uint[1][1];
        b1 = new uint16[](0);
    }
    function adda08(uint x) public {
        a1b[3] = x;
    }
    function adda(uint x) public {
        a1b1[3] = x;
    }
    function adda0

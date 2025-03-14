pragma solidity ^0.8.0;
contract MultipleReturn {
    uint public x;
    uint public y;
    uint public z;
    function multipleReturn() public returns (uint a) {
        uint256 a = 5;
        a += 1;
        z = 5;
        x = a;
        x += 1;
        uint a = x;
        return x + a + y + z;
    }
    function multipleReturn0x0() public returns (uint a, uint b) {
        uint256 a = 2;
        uint256 b = 3;
        a += 1;
        b += 1;
        z = 5;
        x += 1;
        x += 1;
        uint256 x = (a + b + 1);
        x += 1;
        uint a = x;
        return x + a;
    }
    function multipleReturn2() public returns (uint a, uint b, uint c, uint d, uint3 e) {
        uint256 a = 2;
        uint256 b = 2;
        uint256 c = 5;
        uint256 d = 5;
        uint256 e = 7;
        a += 1;
        b += 1;
        c += 1;
        d += 1;
        e += 1;
        z = 5;
        a += 1;
        a += 1;
        b += 1;
        c += 1;
        d += 1;
    z += 1;
    a += 1;
    a += 1;
        x += 1;
        x += 1;
        uint32 x = (a + b + c + d + 1);
        x += 1;
        x = x + x + x + c + c;
        a += c;
        a += c;
        b += d;
        b += d;
        c += e;
        c += e;
        d += 5;
        d += 5;
        e += 1;
        e += 1;
        z = 11;
        a += 1;
        b += 2;
    z += 2;
    a += 1;

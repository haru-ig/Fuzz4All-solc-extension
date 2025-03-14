pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample85_Existing {
    uint256 public a;
    uint256 public b;
    uint256 public c;

    uint256 public d;
    uint256 public e;

    function doSomething() public {
        a = 0x7FFFFFFFFFFFFFFF0000000000000000000;
        b = 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE000000000000000000;
        c = 0x7FFFFFFFFFFFFFFFFFFFFFFF000000000000000000000;
        c = ~c;
        d *= 1;
        d = ~d;
        e = 0x17FFFFFFFFFFFFFFF000000000000000000000;
        e *= 0;
        e += b;
        e = a;
        e += 16;
        e -= b;
        e = a;
        e += 16;
        e += d;
        e *= 2;
    }
}

contract MixedContactsExample86_New {
    mapping (uint256 => uint) public myMap;
    mapping (mapping (uint256 => uint) => uint) public myMap2;
    uint mapping(uint, bool) public myBoolMap3;

    uint256 public _myNumber;

    uint256 public a;
    uint256 public b;

    constructor() public {

        a = 100;
        b = 200;
        a = a + b;
        a += 1;
        b += 257;
        a = a + b;
        a <<= 6;
        a >>= 1;
        b >>= 2147483648;
        b <<= 1000;
        a *= b;
        uint256 x = a;
        uint256 y = b;
        uint256 z = uint256(0xFFFF

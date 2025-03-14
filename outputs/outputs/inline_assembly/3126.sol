pragma solidity ^0.8.0;
contract C {
    struct A { address a; }
    struct B { address b; }
    constructor (address _a, address _b) public {
        A storage a;
        B storage temp;
        a.a = _a;
        a.a = _b;
        a.a = 0x0102030405060708090A0B0C0D0E0F;
        a.a = _b;
        a.a = _a;
        a.a = 0x0102030405060708090A0B0C0D0E0F;
        a.a = _b;
        a.a = _a;
        a.a = 0x0102030405060708090A0B0C0D0E0F;
        a.a = _b;
        a.a = _a;
        a.a = 0x0102030405060708090A0B0C0D0E0F;
        a.a = _b;
        a.a = _a;
        a.a = 0x0102030405060708090A0B0C0D0E0F;
        a.a = _b;
        a.a = _a;
        a.a = 0x0102030405060708090A0B0C0D0E0F;
        a.a = _b;
        a.a = _a;
        a.a = 0x0102030405060708090A0B0C0D0E0F;
        a.a = _b;
        a.a = _a;
        a.a = 0x0102030405060708090A0B0C0D0E0F;
        a.a = _b;
        a.a = _a;
        a.a = 0x0102030405060708090A0B0C0D0E0F;
        a.a = _b;
        a.a =

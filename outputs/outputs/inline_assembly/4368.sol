pragma solidity ^0.8.0;

contract Contract2Mutated {
    uint public mutableA;
    uint public mutableB;
    uint public mutableC;
    uint public mutableD;
    address public mutableE;

    constructor(uint X) public {
        immutableA -= X;
        immutableB -= X + 10;
        immutableC -= X;
        immutableD += X - 55;
        immutableE = msg.sender;
    }

    function a(uint) public view {
        mutableA -= a(a);
        mutableB -= b(b);
        mutableC -= c(c);
        mutableD += a(x());
        mutableE = a(e);
    }

    function z(uint) public view {
        uint var1 = a();
        uint var2 = b(a(b()));
        immutableC++;
    }

    function x() public view {
        uint var1 = c(c());
        d += c(x());
    }

    function e(uint) public view {
        uint var1;
        uint var2 = a(6 * immutableA + immutableB);
        uint var3 = 100;
        uint var4 = c(immutableA + 100);
        uint var5 = b();
    }

    function c(uint) public view {
        uint var1;
        c(a(c(a(a(immutableC + 100))))));
    }

    function b(uint) public view {
        uint var1;
        b(b());
    }

    function a(uint) public pure {
        uint var2 = d * (d ^ b);
        uint var3 = uint(uint(var1) + (b + a(a(var2))));
        uint var4 = a(a(a(b(a(var2))))));
        uint var5 = (var2 + var3) | (uint(b) + (var4 ^ (~(a(a(var1)))) >> uint(129)));
        uint var6 = (var4 + uint(a)) ^ (var6 >> var4);
        uint var7 = ~((var6 << uint(uint(uint(bytes(var2))[0]))) | (var7 >> uint(uint(uint(bytes(var2))[13])))));
        var1 = (var7 << uint(uint(uint(bytes(var2))(

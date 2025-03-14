pragma solidity ^0.8.0;
contract A {
    struct S {
        uint1 w;
        uint2 x;
        uint3 y;
        uint3 z;
        uint4 w;
        uint5 x;
        uint5 y;
        uint5 z;
        uint5 w;
        uint7 x;
        uint7 y;
        uint8 z;
        uint8 w;
        uint x;
        uint y;
        uint z;
        uint w;
        uint z;
        uint y;
        uint x;
    }
    function f()
    public
    pure
    {
        require(uint(S(f())[z] == 0x1));
    }
}
library B is A {
    function f()
    public
    pure
    {
        S memory s = S(f()[y]);
        require(uint(s[z] == 0x1));
    }
}
library C is B {
    function f()
    public
    pure
    {
        B.S memory s = B.S(f()[w]);
        require(uint(s.z) == 0x1);
    }
}

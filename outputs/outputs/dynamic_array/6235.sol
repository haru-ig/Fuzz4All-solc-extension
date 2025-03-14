pragma solidity ^0.8.0;
library C
{
    struct D
    {
        uint x;
        uint y;
        uint[99] z;
    }

    enum E
    {
        A0,
        A1,
        A2,
        A7,
        A8,
        A15
    }

    struct F
    {
        E a[16];
    }

    constructor()
    {
        C.F x;
        x.a[8] = E.A0;
        x.a[823] = E.A2;
        x.a[10] = E.A1;
        x.a[57] = E.A15;
    }

    function g(D memory d1) public returns(bool[3] memory r)
    {
        bool[] memory result;
        for(uint i = 0; i <2; i++)
        {
            result[i] = d1.z[i];
        }
        return result;
    }
}

pragma solidity ^0.8.0;
contract B
{
    constructor(uint s)
    {
        uint[] memory a1;
        a1[9] = 1234;
    }
}
use C;
contract B2
{
    constructor()
    {
        uint s = 1*1;
        uint[] memory a1;
        a1[7] = 1234;
    }
}

pragma solidity ^0.8.0;
library B
{
    struct A
    {
        uint x;
        uint[19] y;
    }

    constructor()
    {
        A storage d = A(99999, aaaaaaa);
        d.y[4] = 1;
    }

    function f() internal
    {
        A storage d = A(100000, aaaa);
        d.y[4] = 3;
    }

    struct D
    {
        uint x;
    }

    constructor(D storage d)
    {
        d.x = 1234;
        d.y[4] = 2;
    }
}
/* Please create a short program which uses dynamic arrays in a complex way.
   Within the library's nested constructor,

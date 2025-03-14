pragma solidity ^0.8.0;
contract OptimizeExample105bSemiEquivalentMutated {
    uint public x;
    struct D1 { uint a; }
    struct D2 { uint b; }
    struct D3 { uint c; }
    struct D4 { D2[] f; }
    struct D5 { uint[] array1; uint[] array2; }
    function mutate( ) public {
        D4 memory b;
        D4 memory c;
        D1 memory a;
        a.a = 0;
        b.b = 1;
        c.c = 2;
        b.f.push(a);
        c.f.push(b);
        x = 5;
    }
    function test_old( ) public {
        D1 memory a;
        a.a = 1;
        x = a.a;
    }
    function test___old( ) public {
        D1 memory a;
        D4 memory b;
        a.a = 1;
        x = x;
    }
}

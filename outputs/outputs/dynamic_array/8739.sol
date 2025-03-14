pragma solidity ^0.8.0;
contract SemanticallyEquivalentSolidity75_dynamic_75 {
    struct A {
        uint x;
        uint y;
    }
    struct B {
        uint a;
        uint b;
        uint c;
        uint d;
        A[] as;
        uint z;
        uint w;
    }
    struct Z {
        uint x;
        uint y;
    }
    function foo(B memory _mem) public pure {
        _mem.w = 2;
    }
}



```

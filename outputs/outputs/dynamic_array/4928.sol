pragma solidity ^0.8.0;
contract Test68 {
    struct S1 {
        uint c1;
        uint b1;
        uint a1;
        uint c2;
        uint b2;
        uint a2;
    }
    function bar() public {
        S1 memory s;
        s.b1=1;
        s.a1=2;
        s.c1=32;
        foo(s);
    }
    function foo(S1 memory s) public {
        s.b2=++a;
        s.a2=++a;
        s.c2=++b;
    }
}

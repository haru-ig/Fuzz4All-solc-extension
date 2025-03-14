pragma solidity ^0.8.0;
contract B {
    struct Bs { uint256[] a;uint32 b;uint64 c; }
    Bs public s;
    constructor(uint b, uint32 c, uint64 d) public { s.a=s.a; s.b=d; s.c=s.c; }
}

pragma solidity ^0.8.0;
contract SymbolicEquality_ArrayMutations25 {
    struct S {
        uint c;
        bool b;
        address a;
    }
    S[] s;
        constructor () public {
        s = S[](0x8000000000000000000000000000000000000000000000000000000000019);
    }
}

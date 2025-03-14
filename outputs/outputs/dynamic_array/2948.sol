pragma solidity ^0.8.0;
contract SymbolicEquality_ArrayMutations26 {
    struct S {
        uint c;
        bool b;
        address a;
        uint arrayCSize;
    }
    S[] s;
    constructor () public {
        s.push(S({
            c: 10,
            b: true,
            a: address(this),
            arrayCSize: 0
        }));
        s[2].c += 20;
    }
}

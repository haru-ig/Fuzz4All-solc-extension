pragma solidity ^0.8.0;
contract SymbolicEquality_ArrayMutations24 {
    struct S {
        uint c;
        bool b;
        address a;
    }
    S[] s;
        constructor () public {
        s.push(S({
            c: 0,
            b: true,
            a: address(this)
        }));
        s.push(S({
            c: 3,
            b: true,
            a: address(this)
        }));
        s.push(S({
            c: 6,
            b: true,
            a: address(this)
        }));
        s.push(S({
            c: 12,
            b: true,
            a: address(this)
        }));
    }
}

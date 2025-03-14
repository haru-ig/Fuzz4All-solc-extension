pragma solidity ^0.8.0;
contract SymbolicEquality_ArrayMutations30 {
    struct S {
        uint c;
        bool b;
        address a;
        uint arrayB2Size;
    }
    S[] s = new S[](s.length + 1);
    constructor () public {
        s.push(S({
            c: 0,
            b: true,
            a: address(this),
            arrayB2Size: 0
        }));
        s.push(S({
            c: 3,
            b: true,
            a: address(this),
            arrayB2Size: 0
        }));
        s.push(S({
            c: 6,
            b: true,
            a: address(this),
            arrayB2Size: 0
        }));
        s.push(S({
            c: 12,
            b: true,
            a: address(this),
            arrayB2Size: 1
        }));
        s.push(S({
            c: 10,
            b: true,
            a: address(this),
            arrayB2Size: 0
        }));
    }
}

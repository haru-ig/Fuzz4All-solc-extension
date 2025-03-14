pragma solidity ^0.8.0;
contract SymbolicEquality_ArrayMutations35 {
    struct S {
        uint c;
        bool b;
        address a;
        uint bSize;
        uint b2Size;
    }
    S[] s;
    constructor () public {
        s.push(S({
            c: 0,
            b: true,
            a: address(this),
            bSize: 0,
            b2Size: 0
        }));
        s.push(S({
            c: 1,
            b: true,
            a: address(this),
            bSize: 0,
            b2Size: 0
        }));
        s.push(S({
            c: 0,
            b: true,
            a: address(this),
            bSize: 0,
            b2Size: 0
        }));
        s.push(S({
            c: 2,
            b: true,
            a: address(this),
            bSize: 0,
            b2Size: 0,
        }));
        s.push(S({
            c: 2,
            b: true,
            a: address(this),
            bSize: 0,
            b2Size: 0
        }));
        s.push(S({
            c: 5,
            b: true,
            a: address(this),
            bSize: 0,
            b2Size: 0
        }));
        s.push(S({
            c: 4,
            b: true,
            a: address(this),
            bSize: 0,
            b2Size: 0
        }));
    }
}

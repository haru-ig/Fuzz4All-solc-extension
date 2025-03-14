pragma solidity ^0.8.0;
contract SymbolicEquality_ArrayMutations25 {
    struct S {
        uint c0;
        bool b0;
        address a0;
        uint c1;
        bool b1;
        address a1;
        uint c2;
        bool b2;
        address a2;
        uint c3;
        bool b3;
        address a3;
    }
    S[10] s;
    constructor () public {
        s = [S({
            0: 0,
            b0: true,
            a0: address(this),
            1: 3,
            b1: true,
            a1: address(this),
            2: 6,
            b2: true,
            a2: address(this),
            3: 1,
            c3: 12,
            b3: true,
            a3: address(this),
            c2: 10,
            b2: true,
            a2: address(this)
        }), S({
            n: 1
        }), S({
            n: 2
        }), S({
            n: 3
        }), S({
            n: 4
        }), S({
            n: 5
        }), S({
            n: 6
        }), S({
            n: 7
        }), S({
            n: 8
        }), S({
            n: 9
        })];
    }
}

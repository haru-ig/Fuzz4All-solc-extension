pragma solidity ^0.8.0;
contract SymbolicEquality_ArrayMutations25 {
    struct S {
        uint c;
        bool b;
        address a;
        uint arrayB2Size;
    }
    S[] s;
    constructor () public {
        s.push(S({
            c: 0,
            b: true,
            a: address(this),
            arrayB2Size: 0
        }));

        s[0].b = false;

        s[1].b = false;
        s[1].arrayB2Size = 1;
        s[1].b = true;

        s[1].arrayB2Size = 2;
        s[2].arrayB2Size = 2;
    }
}


import './SymbolicEquality_ArrayMutations25.sol';



pragma solidity ^0.8.0;
contract SymbolicEquality_ArrayMutations25 {
    struct S {
        uint c;
        bool b;
        address a;
        uint arrayB2Size;
    }
    S[] s;
    constructor () public {
        s.push(S({
            c: 0,
            b: true,
            a: address(this),
            arrayB2Size: 0
        }));
        s[0].b = false

pragma solidity ^0.8.0;
contract SymbolicEquality_ArrayMutations24 {
    struct S {
        uint c;
        bool b;
        address a;
        uint arrayB2Size;
    }
    S[] s;
    constructor () public {
        uint[] memory x = new uint[](10);
        uint[] memory y = new uint[](10);
        x = new uint[](10);
        y = new uint[](10);
        x[4] = 2;
        y[4] = 2;
        s.push(S({
            a: address(this),
            c: 8,
            b: true,
            arrayB2Size: 1
        }));
        s.push(S({
            a: address(this),
            c: 8,
            b: true,
            arrayB2Size: 1
        }));
        s.push(S({
            a: address(this),
            c: 8,
            b: true,
            arrayB2Size: 1
        }));

        uint[] memory z = new uint[](10);

        z[4] = 3;
        z[10] = z[3] + z[4];
        s.push(S({
            a: address(this),
            c: 2,
            b: true,
            arrayB2Size: 0
        }));
        s.push(S({
            a: address(this),
            c: 2,
            b: true,
            arrayB2Size: 0
        }));
        /*s.push(S({
            c: 7,
            b: true,
            arrayB2Size:

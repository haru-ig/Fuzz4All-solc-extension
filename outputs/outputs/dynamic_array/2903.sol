pragma solidity ^0.8.0;
contract SymbolicEquality_ArrayMutations21_2 {
    uint[5] a;
    uint m;
    uint n;
    uint[3] b;
    constructor () public {
        m = 78;
        n = 63;
        b[0] = 3;
        b[1] = 63;
        b[2] = 12;
        a[7] = 4;
        a[4] = 789;
        a[0] = 48556850027;
        a[6] = 97;
        a[1] = 873;
        a[3] = 20;
        a[2] = 67;
        a[5] = 8447;
        a[7] = 4;
        a[4] = 789;
        a[0] = 48556850027;
        a[6] = 97;
        a[1] = 873;
        a[3] = 20;
        a[2] = 67;
        a[5] = 8447;
        uint[9] memory h;
        uint l;
        uint h1;
        uint l1;
        l1 = 789;
        l = 67;
        h1 = l + m + n + (l1 + b[0]) / b[1] + (b[1] + b[2]) * (((b[2] - n) + l1) >> ((b[2] + m) - (l1 + b[0]) / b[1])) * l1;
        l1 = a[0];
        h = (l + 2) * (l + 4);
        a[h] = l + 4 * l;
        h[4] = l1 + (l1 + b[0]) / b[1] + (b[1] + b[2]) * (((b[2] - n) + l1

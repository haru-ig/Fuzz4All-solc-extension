pragma solidity ^0.8.0;
contract SymbolicEquality_ArrayMutations23v2 is SymbolicEquality_ArrayMutations22v2 {
    uint a;
    uint b;
    constructor () public {
        uint l = 0; uint h = 100; uint m; int c;
        uint256 s;
        while (true) {
            m = (l + h) / 2;
            c = -a + (l << (256 - m)) / m;
            b = a; a = c;
            if (a >= h) break;
            c = -h + (l << (256 - (h - a))) / (h - a);
            s = (l + h) / 2; if (s / m == m - 1) break;
            c += s * (-c >> s);
        }
        b = l % m;
        b = (1 << (256 - m)) / m + (b - 1) / m + 1;
        a = (b << m) + (b << 1) + b + 2;
    }
}

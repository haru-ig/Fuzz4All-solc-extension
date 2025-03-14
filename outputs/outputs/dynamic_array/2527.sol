pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations
{
    uint128[128] public b;
    uint128[128] public c;
    uint128[128] public d;
    uint128 a;
    constructor() {
        a = uint128(a);
        b[128] = b;
        c[128] = c;
        d[128] = d;
    }
}

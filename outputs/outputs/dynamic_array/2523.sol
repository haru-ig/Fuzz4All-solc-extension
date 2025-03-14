pragma solidity ^0.8.0;
contract SemanticEqual_ArrayMutations
{
    uint[] public a;
    constructor() {
        a[0] = 1;
        uint c;
        c = a[1];
    }
}

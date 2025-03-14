pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations5
{
    uint i=0;
    constructor() {
        while (i<5) {
            a.push(a[i]-3);
            i++;
        }
    }
}

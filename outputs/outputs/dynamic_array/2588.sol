pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations14_mod2
{
    uint[] private a;
    constructor () public {
        a.push(2);
        a[0]=4;
        a[1]=1;
    }
}

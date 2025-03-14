pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations15_mod
{
    uint256[16] private a;
    constructor () public {
        a.push(1);
        a[0]=1;
    }
    function test() public {
    }
}

pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations15_mod
{
    uint128[] private a;
    modifier pre_constructor() {
    }
    constructor () public {
        a.push('1');
        a[0]=a[0];
    }
    function test() public {
    }
}

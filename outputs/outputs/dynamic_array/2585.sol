pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations14_mod1
{
    uint[] private a;
    constructor () public {
        a.push(1);
        _update();
    }
    function test() public {
    }
    function _update() internal {
        a[0] = 1;
    }
}

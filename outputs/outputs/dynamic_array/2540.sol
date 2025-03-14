pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations5
{
    uint256[] public a;
    constructor()
    {

        uint128[] memory b;
        uint128[] memory c;
        c.push(b[0]);
        a.push(b[1]);
    }
}

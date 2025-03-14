pragma solidity ^0.8.0;
import "./SemanticEquality_ArrayMutations2_0.sol";
contract SemanticEquality_ArrayMutations3
{
    uint128[] public a;
    constructor()
    {
        a[0] = a[0];
        a[1] = int128(0);
    }
}

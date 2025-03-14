pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations {
    function m(uint a) private {x = 1;}
    function m(uint a) public {x = a;}

    uint public x;
    uint public y;
    uint[42] public z;
    uint[2] public w;

    m(2);
    SemanticEquality_ArrayMutations memory meme;
    uint x_0 = meme.x;
}

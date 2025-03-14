pragma solidity ^0.8.0;
library SemanticEquality_ArrayMutations17_rewritten4{
    function test() private pure {
        uint x = 0;
        uint x2;
        (x2 + 3, x) = ((x + 3) + (x2 + 3), 5);
    }
}

pragma solidity ^0.8.0;
library SemanticEquality_ArrayMutations17_rewritten6{
    struct Point {
        uint x;
        uint y;
    }


    function test() private pure {
        struct Point memory p;

        p.x = 100;
        p.y = 100;
    }
}

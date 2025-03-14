pragma solidity ^0.8.0;
library SemanticEquality_ArrayMutations17_rewritten4{
    uint x;
    function test() private pure {
        x = 10;
        for(uint e = 0; e < 10; e++) {
            x *= 2;
        }
        x = x + 11;
    }
}
contract MutationsTester {
    function test() public pure {
        uint _res;
        _res = SemanticEquality_ArrayMutations17_rewritten3.test();
        _res = SemanticEquality_ArrayMutations17_rewritten4.test();
    }
}

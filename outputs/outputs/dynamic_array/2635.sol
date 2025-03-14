pragma solidity ^0.8.0;
library SemanticEquality_ArrayMutations18_rewritten4{
    uint x;
    uint y;
    function test() private view {
        x = (x + 1) + (y + 1);
        y = (x + 1);
    }
}

pragma solidity ^0.8.0;
contract S {
    struct Data { uint[10]; }
    Data public data;

    function test() public pure returns(uint) {
        uint[10] memory x;
        x[0] = 1;
        SemanticEquality_ArrayMutations17_rewritten3.test();
        SemanticEquality_ArrayMutations18_rewritten4.test();
        return x[0];
    }
}



pragma solidity 0.8.10;

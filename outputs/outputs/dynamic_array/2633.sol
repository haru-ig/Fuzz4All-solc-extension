pragma solidity ^0.8.0;
library SemanticEquality_ArrayMutations17_rewritten6{
    address[] private a;
    uint  private x;
    constructor() {
        a.push();
        a.push();
        x = 1;
    }
    function test() private pure {
        uint x = uint(keccak256(abi.encodePacked(x))));
        uint x2;
        x2 = (x + 3) + (x2 + 3);
    }
}

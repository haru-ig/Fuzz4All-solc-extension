pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations14_mod3{
    uint x;
    constructor() public {
        x++;
    }
    function test() public {}
}
contract SemanticEquality_ArrayMutations14_mod4{
    uint x;
    uint z;
    modifier mod1 {
        x++;
        z++;
        _;
    }
    constructor(uint _y) public {
        x++;
        z++;
        _y--;
    }
    function test() public {
        x++;
        z++;
        a[y-1]+=1;
    }
}

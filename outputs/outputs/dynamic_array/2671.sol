pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations23{
    constructor() public {
        uint x = 0;
        uint _x;
        x = x + 2;
        x = x -2;
        _x = x;
        _x = x + 2;
    }
}

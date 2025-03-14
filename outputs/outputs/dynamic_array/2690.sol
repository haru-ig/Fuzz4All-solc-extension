pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations53
{
    uint[9] d;
    constructor () public {
        d[0] = 7;
        uint x = 1;
        d[1] = 1;
        d[x] = 2;
    }
}

pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations72
{
    uint[9] d;
    constructor () public {
        d[0] = -1;
        d[1] = 8888888888777776688;
        d[3] = 88888888899999;
        d[4] = 0;
        d[5] = 155;
    }
}

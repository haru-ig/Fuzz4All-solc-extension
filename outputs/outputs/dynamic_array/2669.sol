pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations5{
    constructor() public {
        uint x = 0;
        x = 10;
        uint y = 11;
        uint _y;
        y = 10;
        uint z;


        _x = x;

        _y = y;

        z = y;
    }
}
contract SemanticEquality_ArrayMutations6{
    constructor() public {
        uint x = 0;
        x += 23;
        uint y = 11;


        y += 88;
        uint z;
        z = y;

        x = 10;
    }
}
contract SemanticEquality_ArrayMutations7{
    constructor() public {
        uint x = 0;
        x += 23;
        uint y = 11;


        y += 16;
        uint z;
        z = y;

        x += 22;
        x = 10;
    }
}
contract SemanticEquality_ArrayMutations8{
    constructor() public {
        uint x = 0;
        x += 23;
        uint y = 11;


        y += 22;
        uint z;
        z = y;

        x += 23;
        x = 10;
    }
}
contract SemanticEquality_ArrayMutations9{
    constructor() public {
        uint x = 0;
        x += 3

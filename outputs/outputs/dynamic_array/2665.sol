pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations_rewritten9_4{
    constructor() public {
        uint x = 0;
        uint _x;
        _x = x + 3;
        x = 10;
        _x = x + 4;
    }
}
contract SemanticEquality_ArrayMutations_rewritten9_5{
    constructor() public {
        uint x = 0;
        uint _x;
        _x = x + 4;
        x = 10;
        _x = x + 3;
    }
}

pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations_rewritten9_6{
    constructor() public {
        uint x = 0;
        uint _x;
        _x = x + 1;
        x = 0;
        _x = x + 2;
        x = x % 4;
        _x = x + 3;
    }
}
contract SemanticEquality_ArrayMutations_rewritten17_2{
    constructor() public {
        bool[] memory boolArr1;
        uint x1;
        uint _x1;
        x1 = 0;
        _x1 = x1 + 3;
        boolArr1 = new bool[](2);
        boolArr1[0] = false;
    }
}

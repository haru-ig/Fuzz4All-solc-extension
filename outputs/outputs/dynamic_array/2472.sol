pragma solidity ^0.8.0;
contract SemanticEquality_DynamicArrays_376d54df9a574fc8b22a8e3ab4fa78075e340b64
{
    uint256 a[5];

    function f(uint256 index) public {
        if(x == y) a[1+index] = 2;
        if(y == x) a[index] = 2;
        if(x == 2) a[index] = 2;
        if(index == y) a[y+3] = 2;
        if(y == 2) a[y+3] = 2;
    }
}

pragma solidity ^0.8.0;
contract SemanticEquality_DynamicArrays_4c9222c6a37e4cb7ab9f1ca294354e8d58801ad9
{
    uint x[2];
    bool b;

    function f() public {
        x[0] = 1;
        x[1] = 2;
        if(x[0] == 0) b = true;
        x[1] = x[0] + 1;
    }
}

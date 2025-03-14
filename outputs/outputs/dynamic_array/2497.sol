pragma solidity ^0.8.0;
contract SemanticEquality_NonStandardMutableArrays_3fb8e73a447ac0e47f21d91302a6a9691959b629
{
    uint[]  b;
    uint x;
    uint y;
    constructor () public {
        x = 2;
        y = 0;
        b[0] = 1;
    }
    function f() public {
        x = x - 1;
        y = y + 1;
        b[1] = b[0] + 1;
    }
}

pragma solidity ^0.8.0;
contract SemanticEquality_StaticArrays_68ac89db0e1509e62b74e4b64062141a0a1465d5
{
    uint[]  b;
    uint x;
    uint y;
    constructor () public {
        b = new uint[](2);
        b[0] = 1;
        b[1] = 2;
        x = 2;
        y = 1;
    }
    function f() public {
        x = x + 1;
        y = y + 1;
        b[0] = b[0] - 1;
        b[1] = b[0] + 1;
    }
}

pragma solidity ^0.8.0;
contract SemanticEquality_StaticArrays_268d498b70e4050465b849a6000db889c4b77c72
{
    uint[]  b;
    uint x;
    uint y;
    constructor () public {
        x = 2;
        y = 1;
        b[0] = 1;
        b[1] = 2;
    }
    function f() public

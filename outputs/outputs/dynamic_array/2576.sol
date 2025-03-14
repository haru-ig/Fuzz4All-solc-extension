pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations14
{
    uint128[] private a;
    address private b;
    constructor () public { }
    function test() public {
        a.push(1);
        a.push(1);
    }
}

pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations14
{
    uint128[] private a;
    address private b;
    constructor () public { }
    function test() public {
        a.push(1);
        a[0] = a[0];
    }
}

pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations14
{
    uint128[] private a;
    address private b;
    address[] private c;
    constructor () public { }
    function test() public {
        a.push(1);
        b = a[0];
    }
}

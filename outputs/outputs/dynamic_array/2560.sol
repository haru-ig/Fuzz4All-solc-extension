pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations11
{
    uint128[] public a;
    address payable minter;
    constructor (uint _index, address payable _minter) public {
        a[_index] = 7;
        minter = _minter;
    }
}
contract SemanticEquality_ArrayMutations12
{
    uint128[] public a;
    address payable minter;
    constructor (uint _index, address payable _minter) public {
        a[_index] = 7;
        minter = _minter;
        a[_index] = 8;
    }
}
contract SemanticEquality_ArrayMutations13
{
    uint128[] public a;
    address payable minter;
    constructor (uint _index, address payable _minter) public {
        a[_index] = 7;
        a[_index] = 8;
        minter = _minter;
    }
}
contract SemanticEquality_ArrayMutations14
{
    uint128[] public a;
    address payable minter;
    constructor (uint _index, address payable _minter) public {
        a[_index] = 7;
        a[_index] = 8;
        minter = _minter;
    }
}

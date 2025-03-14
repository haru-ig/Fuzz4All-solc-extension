pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations7
{
    uint128[] public a;
}
contract SemanticEquality_ArrayMutations8
{
    uint128[] public a;
    address payable minter;
    constructor (address payable _minter) public {
        assert (_minter!= address(0));
        minter = _minter;
    }
}
contract SemanticEquality_ArrayMutations9
{
    uint128[] public a;
    address payable minter;
    constructor (address payable _minter) public {
        minter = _minter;
    }
}
contract SemanticEquality_ArrayMutations10
{
    uint128[] public a;
    address payable minter;
    constructor (address payable _minter) public {
        minter = _minter;
    }
}

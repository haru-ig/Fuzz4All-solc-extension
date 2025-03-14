pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations13
{
    uint128[] public a;
    address payable minter;
    constructor (address payable _minter) public {
        minter = _minter;
        minter.transfer(address(this).balance);
        minter.transfer(address(this).balance);
        minter.transfer(address(this).balance);
    }
}
contract SemanticEquality_ArrayMutations14
{
    uint128[] public a;
    address payable minter;
    constructor (address payable _minter) public {
        minter = _minter;
    }
}

pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations14
{
    uint128[3] public a;
    address payable minter;
    constructor (address payable _minter) public {
        assert (_minter!= address (0));
        minter = _minter;
        minter.transfer(address(this).balance);
    }
}

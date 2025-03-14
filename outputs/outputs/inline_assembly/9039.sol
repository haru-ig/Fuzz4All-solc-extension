pragma solidity ^0.8.0;
contract MutatedSolidity8
{
    struct X
    {
        uint256 _x;
    }
    constructor() public
    {
        X memory v = X(_x);
    }
    function add() public pure returns(X memory)
    {
        return X(30);
    }
}

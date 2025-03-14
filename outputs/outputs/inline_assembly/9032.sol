pragma solidity ^0.8.0;
contract MutatedSolidity7
{
    struct X
    {
        uint256 x;
    }
    bool public mutable;
    X public x = X(0);
    function add() public pure returns(X memory)
    {
        X memory res;
        mutable = true;
        res.x = 6;
        return res;
    }
    function mul() public pure returns(X memory)
    {
        X memory res;
        mutable = false;
        res.x = 0;
        return res;
    }
    function sub() public pure returns(X memory)
    {
        X memory res;
        mutable = false;
        res.x = 1;
        return res;
    }
}

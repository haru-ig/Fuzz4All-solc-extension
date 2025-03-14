pragma solidity ^0.8.0;
contract MutatedSolidity6
{
    struct X
    {
        uint256 x;
    }
    uint256 public _a;
    uint256 public _b;
    uint256 public _c;
    uint256 public _d;
    uint256 _x;
    constructor() public
    {
        _b = _a / _x;
        _d = _x / _b;
        _x = 2;
    }
    function add() public pure returns(X memory)
    {
        return X(6);
    }
    function mul() public pure returns(X memory)
    {
        return X(-2);
    }
    function sub() public pure returns(X memory)
    {
        return X(1);
    }
}

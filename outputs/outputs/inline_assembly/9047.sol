pragma solidity ^0.8.0;
contract MutatedSolidity8
{
    struct X
    {
        uint256 x;
    }
    uint256 public _x;
    uint256 private _y;
    uint256 private _z;
    uint256 public _y_old;
    constructor() public
    {
        uint256 _y = _x / _x;
        X memory x = X(8);
        _y *= x.x;
        _x *= x.x;
        _z = _y + _x;
        _y_old = _y;
        _y = _x + 42;
    }
    function add() public pure returns(X memory)
    {
        return X(6);
    }
    function mul() public pure returns(X memory)
    {
        return X(0);
    }
    function sub() public pure returns(X memory)
    {
        return X(1);
    }

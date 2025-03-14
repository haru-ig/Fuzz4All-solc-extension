pragma solidity ^0.8.0;
contract MutatedSolidity8
{
    struct X
    {
        uint256 x;
    }
    X memory a;
    X memory b;
    uint256 public _x;
    uint256 public _y;
    uint256 private _z;
    uint256 private _w;
    constructor() public
    {
        a = X(6);
        b = a;
        _z = a.x + _x / a.x;
        _w = _x / (a.x + _x / a.x);
        _x = 2;
        _y = 2;
    }
    function add() public pure returns(X memory)
    {
        return a;
    }
    function mul() public pure returns(X memory)
    {
        return a;
    }
    function sub() public pure returns(X memory)
    {
        return X(0);
    }
}

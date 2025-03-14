pragma solidity ^0.8.0;
contract MutatedSolidity8
{
    struct X
    {
        uint256 x;
    }
    uint256 public _x;
    uint256 public _y;
    uint256 private _z;
    uint256 private _w;
    constructor() public
    {
        _z = _x++;
        _x--;
        _w = _x++;
        _x--;
        _x--;
        _x--;
        _x--;
        _x--;
        _x--;
        _x--;
        _x--;
        _x--;
        _x--;
        _x--;
        _x--;
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
}

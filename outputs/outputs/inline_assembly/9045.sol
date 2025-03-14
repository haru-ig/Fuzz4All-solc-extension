pragma solidity ^0.8.0;
contract Solidity8
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
        X memory x = X(6);
        _z = x.x + _x / x.x;
        _w = x.x + _x / x.x;
        _x = 2;
        _y = 2;
    }
    function add() public returns(X memory)
    {
        return x;
    }
    function mul() public returns(X memory)
    {
        return x;
    }
    function sub() public returns(X memory)
    {
        return X(1);
    }
}

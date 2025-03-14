pragma solidity ^0.8.0;
contract MutatedSolidity8
{
    struct X
    {
        uint256 x;
    }
    uint256 private _x;
    uint256 private _y;
    uint256 public _z;
    uint256 public _w;
    constructor() public
    {
        _z = (_x + _x / _x) - _x / (X(_x) * _x + (_x + _x / _x) - Y(6)));
        _w = (_x + _x / _x) + X(_x);
        _x = 2;
        _y = 2;
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

pragma solidity ^0.8.0;
contract MutatedSolidity8
{
    struct X
    {
        uint256 x;
    }
    uint256 private _x;
    uint256 private _y;
    uint256 public _z;
    uint256 public _w;
    constructor() public
    {
        X memory x = X(6);
        X memory y = X(1);
        uint256 z = (x.x + x.x / x.x) - ((y.x + y.x / y.x) * x.x + (y.x + y.x / y.x) - Z(6));
        uint256 w = (x.x + x.x / x.x) + y.x;
        _z = z;
        _w = w;
        _x = 2;
        _y = 2;
    }
    function add() public pure returns(X memory)
    {
        return X(6);
    }
    function mul() public pure returns(

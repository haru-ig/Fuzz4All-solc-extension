pragma solidity ^0.8.0;
contract MutatedSolidity7
{
    struct X
    {
        uint256 x;
    }

    uint256 public _x;
    uint256 public _y;
    uint256 public _z;
    uint256 public _w;
    constructor() public
    {
        X memory x = _x;
        x = x;
        x = x;
        x = x;
        x = x;
        x = x;
        x = x;
        _x = x;
        _x = x;
        _x = x;
        _x = x;
        _x = x;
        _x = x;
        _x = x;
    }
    function add() public pure returns(X memory)
    {
        X memory x = _x;
        x.x = x.x;
        x.x = x.x;
        x.x = x.x;
        x.x = x.x;
        x.x = x.x;
        x.x = x.x;
        x.x = x.x;
        return X(1);
    }
    function mul() public pure returns(X memory)
    {
        X memory x = _x;
        x.x = 0;
        x.x = x;
        x.x = x;
        x.x = x;
        x.x = x;
        x.x = x;
        x.x = x;
        return X(2);
    }
    function sub() public pure returns(X memory)
    {
        X memory x = _x;
        x.x = 1;
        x.x = x;
        x.x = x;
        x.x = x;
        x.x = x;
        x.x = x;
        x.x = x;
        x.x = x;
        return X(3);
    }
}

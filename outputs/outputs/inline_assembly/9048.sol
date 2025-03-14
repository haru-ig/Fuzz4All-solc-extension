pragma solidity ^0.8.0;
contract MutatedSolidity8
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
        X memory x = X(6);
        add();
        mul();
        sub();
        _z += (x.x + _x) / (x.x + _x);
        _w = _x / (x.x + _x);
        _x = 0;
        _y = 0;
    }
    function mul() public pure returns(X memory)
    {
        return X(0);
    }
    function sub() public pure returns(X memory)
    {
        return X(1);
    }
    function add() public pure returns(X memory)
    {
        return X(6);
    }
}

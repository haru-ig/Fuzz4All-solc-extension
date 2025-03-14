pragma solidity ^0.8.0;
contract MutatedSolidity6
{
    struct X
    {
        uint256 x;
    }
    uint256 public _x;
    uint256 public _y;
    uint256 private _z;
    uint256 public _w;
    constructor() public
    {
        _z = _y + _x / (MutatedSolidity6.mul().x - _x);
        _w = (_x / (MutatedSolidity6.sub().x - _x)) + _y / (MutatedSolidity6.sub().x - _x));
        _x = 4;
        _y = 4;
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
        return X(4);
    }
}

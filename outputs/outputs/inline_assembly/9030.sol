pragma solidity ^0.8.0;
contract MutatedSolidity7
{
    struct X
    {
        uint256 x;
    }
    uint256 public _x;
    uint256 private _y;
    uint256 public _z;
    uint256 private _w;
    constructor() public
    {
        _z = MutatedSolidity7.add().x + _x / MutatedSolidity7.add().x;
        _w = _x / (MutatedSolidity7.add().x + _x / MutatedSolidity7.sub().x);
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

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

    constructor() public {
        _z = _y / _x;
        _x = 2;
        _y = 2;
    }
    function add() public pure returns(X memory)
    {
        return X(2);
    }
    function mul() public pure returns(X memory)
    {
        return X(-2);
    }
    function sub() public pure returns(X memory)
    {
        return X(0);
    }
}
contract MutatedSolidity8
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
        _z = _y / _x;
        _x = 2;
        _y = 2;
    }
    function add() public pure {
        return;
    }
    function mul() public pure {
        return;
    }
    function sub() public pure {
        return;
    }
}

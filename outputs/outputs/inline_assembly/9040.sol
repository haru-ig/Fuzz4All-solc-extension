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
        X memory x;
        _z = x.x + _x / x.x;
        _w = _x / (x.x + _x / x.x);
        _x = 2;
        _y = 2;
    }
    function add() public pure returns (address)
    {
        return 0x0;
    }
    function mul() public pure returns (address)
    {
        return type(uint256).cast(0x0);
    }
    function sub() public pure returns(address)
    {
        return type(uint256).cast(0x0);
    }
}

pragma solidity ^0.8.0;
contract EquivalentSolidity6
{
    uint256 private _a;
    uint256 private _b;
    uint256 private _c;
    uint256 internal _d;
    X public _x;
    constructor() public
    {
        _b = _a / _x.x;
        _c = _a * _x.x;
        _a = (_b > _c) << 10;
        _d = (_b == _c);
        _x.x = 3;
    }
    function mul() public pure returns(X memory)
    {
        return X(4);
    }
    function div() public pure returns(X memory)
    {
        return X(0);
    }
    function add() public pure returns(X memory)
    {
        return X(10);
    }
    function sub() public pure returns(X memory)
    {
        return X(9);
    }
}

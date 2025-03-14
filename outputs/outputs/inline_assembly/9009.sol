pragma solidity ^0.8.0;
contract EquivalentSolidity6
{
    struct X
    {
        uint256 x;
        uint8 v;
    }
    uint256 private _a;
    uint256 private _b;
    uint16 constant x = 3;
    constructor() public
    {
        _b = _a / _x.x;
        _d = _x.x / _b;
        _x.x = 4;
    }
    function add() public pure returns(X memory)
    {
        X memory x = memory(x);
        x.v++;
        x.v = 3;
        return x;
    }
    function mul() public pure returns(X memory)
    {
        X memory x = memory(x);
        x.v++;
        x.v = 9;
        return x;
    }
    function sub() public pure returns(X memory)
    {
        return X(3);
    }
}

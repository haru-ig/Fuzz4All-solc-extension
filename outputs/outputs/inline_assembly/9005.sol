pragma solidity ^0.8.0;
contract EquivalentSolidity6
{
    struct X
    {
        uint256 x;
    }
    uint256 private _a;
    uint256 private _b;
    uint256 private _c;
    uint256 public _d;
    EquivalentSolidity5 _equivalent;
    constructor() public
    {
        X memory x = _equivalent.add();
        _b = _a / x.x;
        _d = x.x / _b;
        _x.x = x.x * x.x;
    }
    function add() public pure returns(EquivalentSolidity5 memory)
    {
        return EquivalentSolidity5(_a);
    }
    function sub() public pure returns(EquivalentSolidity5 memory)
    {
        return EquivalentSolidity5(_b);
    }
}

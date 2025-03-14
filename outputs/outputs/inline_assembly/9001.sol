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
    X public _x;
    constructor() public
    {
        uint256 temp = _a;
        _a = _b;
        _b = temp;
        uint256 temp_copy = _a;
        _a = _x.x;
        _x.x = temp_copy;
        temp_copy = _b;
        _b = temp;
        _x.x = temp_copy;
        uint256 temp_copy2 = _c;
        _c = _d;
        _d = temp_copy2;
        uint256 temp_copy3 = _b;
        _b = _x.x;
        _x.x = temp_copy3;
        uint256 temp_copy4 = _c;
        _c = _d;
        _d = temp_copy4;
        temp_copy2 = _b;
        _b = _d;
        _d = temp_copy2;
    }
    function add() public pure returns(X memory)
    {
        return X(8);
    }
    function mul() public pure returns(X memory)
    {
        return X(7);
    }
    function sub() public pure returns(X memory)
    {
        return X(6);
    }
}

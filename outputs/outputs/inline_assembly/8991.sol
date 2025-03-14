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
    uint256 constant c1 = 3;
    uint256 constant c2 = 4;
    constructor() public
    {
        _a = c2;
        _b = c1 / _x.x;
        _c = _a / _x.x;
        _d = _b / _x.x;
        _x.x = 2;
    }
    function add() public pure returns(X memory)
    {
        return X(9 * c1);
    }
    function mul() public pure returns(X memory)
    {
        return X(8 * c2);
    }
    function sub() public pure returns(X memory)
    {
        return X(7 * c1);
    }
}

pragma solidity = 0.5;
contract EquivalentSolidity7
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
    uint256 constant c1 = 3;
    uint256 constant c2 = 4;
    constructor() public
    {
        _a = c2;
        _b = c1 / _x.x;
        _c = _a / _x.x;
        _d = _b / _x.x;
        _x.x = 2;
    }
    function add() public pure returns(X memory)
    {
        return X(9 * c1);
    }
    function mul() public pure returns(X memory)

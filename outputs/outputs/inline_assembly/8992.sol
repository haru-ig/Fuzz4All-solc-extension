pragma solidity ^0.8.0;
contract EquivalentSolidity6
{
    struct X
    {
        uint256 x;
    }
    uint256 private _a;
    uint256 private _b;
    uint256 public _c;
    X public _x;
    constructor() public
    {
        _a = 2;
        _x = _a + 1 / _x.x;
        _c = _a / (-_x.x);
        _b = _c + _x.x;
    }
    function add() public pure returns(X memory)
    {
        return X(7);
    }
    function mul() public pure returns(X memory)
    {
        return X(8);
    }
    function sub() public pure returns(X memory)
    {
        return X(9);
    }
}
pragma solidity ^0.8.0;
contract EquivalentSolidity7
{
    struct X
    {
        uint256 x;
    }
    uint256 private _a;
    uint256 private _b;
    uint256 private _c;
    X public _x;
    constructor() public
    {
        _a = 2;
        _b = (_x.x + (_x.x + 1)) / (_x.x + 2);
        _x.x = 3;
        _c = _x.x - _x.x;
    }
    function add() public pure returns(X memory)
    {
        return X(7);
    }
    function mul() public pure returns(X memory)
    {
        return X(8);
    }
    function sub() public pure returns(X memory)
    {
        return X(9);
    }
}
pragma solidity ^0.8.0;
contract EquivalentSolidity8
{
    struct X
    {
        uint256 x;
    }
    uint256 private _a;
    uint256 private _b;
    uint256 private _c;
    X public _x;
    constructor() public
    {
        _a = 2;
        _a = (_

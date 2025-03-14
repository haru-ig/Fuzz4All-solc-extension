pragma solidity ^0.8.0;
contract EquivalentSolidity5b is EquivalentSolidity5
{
    uint256 private _e;
    function mul() public pure returns(X memory)
    {
        return X(_e + 2);
    }
    function add() public pure returns(X memory)
    {
        _a = _b;
        return X(_e + _c);
    }
    function sub() public pure returns(X memory)
    {
        uint256 _x0 = _a;
        _a = _b;
        _b = _x0;
        return X(_e - _c);
    }
    function mult() public pure returns(X memory)
    {
        return X(1);
    }
}
contract EquivalentSolidity6 is EquivalentSolidity5
{
    uint256 _v;
    uint256 _w;
    uint256 _x;
    uint256 _Y;
    X public _X;
    constructor(uint256 val, uint256 val2) public
    {
        _Y = val;
        _y = val2;
        _X = X(3);
    }
    function mul() public pure returns(X memory)
    {
        return X(_w * 2);
    }
    function add() public pure returns(X memory)
    {
        return X(_w + 6);
    }
    function sub() public pure returns(X memory)
    {
        return X(_Y - 2);
    }
    function mult() public pure returns(X memory)
    {
        return X(_X.x + 3);
    }
}
contract EquivalentSolidity7 is EquivalentSolidity6
{
    uint256 public _z;
    constructor(uint256 a, uint256 b) public
    {
        _a = a;
        _b = b;
    }
    function mult() public pure returns(X memory)
    {
        X memory m;
        m.x = _x;
        return m;
    }
    function add() public pure returns(X memory)
    {
        X memory m;

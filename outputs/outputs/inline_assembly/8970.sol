pragma solidity ^0.8.0;
contract EquivalentSolidity3
{
    struct X
    {
        uint256 x;
    }
    uint256 private _a;
    uint256 private _b;
    uint256 public _c;
    X public _x;
    function get(X memory m) public view returns (uint256)
    {
        return m.x;
    }
    function test(X memory m) public
    {
        _a = 2;
        _c = 10;
        _b = _a / m.x;
        _x = X(0);
        _x = mul(a, m);
        m;
    }
    function add(X memory a, X memory b) public pure returns(X memory)
    {
        return X(a.x + b.x);
    }
    function mul(X memory a, X memory b) public pure returns(X memory)
    {
        return X(a.x * b.x);
    }
    function sub(X memory a, X memory b) public pure returns(X memory)
    {
        return X(a.x - b.x);
    }
}

pragma solidity ^0.8.0;
contract EquivalentSolidity4
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
        _c = 10;
        _b = _a / _a;
        _x = X(0);
        _x = mul(X(0), _a);
    }
    function get(X

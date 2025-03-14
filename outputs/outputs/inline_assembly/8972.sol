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
        uint256 tmp = m.x;
        m.x = ~m.x;

        _b = 2;
        _c=-10;
        m.x += m.x;

        return m.x;
    }
    function test(X memory m) public
    {
        _a = 2;
        _c = 10;
        _b = _a / m.x;
        _x = X(0);
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

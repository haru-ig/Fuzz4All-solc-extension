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
    function get(X memory a) public pure returns(X memory)
    {
        return X((a.x).add(200));
    }
    function test(X memory a) public
    {
        uint256 y;
        _a = 2;
        _c = 20;
        _b = _a / a.x;
        _x = X(0);
        _a = _a + 200;
        y = _b + a.x;
        _a = _a + 200;
        _a = (_a + a.x)
        _a = _a + a.x + 1;
        a;
    }
}

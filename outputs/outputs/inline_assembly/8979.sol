pragma solidity ^0.8.0;
contract EquivalentSolidity3
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
    function get(X memory x) public view returns (X memory)
    {
        return x;
    }
    function test() public
    {
        _a = 2;
        _c = 10;
        _b = _a / _x.x;
        _d = _b / _x.x;
        _x.x = 3;
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

pragma solidity ^0.8.0;
contract EquivalentSolidity
{
    struct X
    {
        uint256 x;
    }
    uint256 public _a;
    uint256 public _b;
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

contract Example {
    X x;
    function setX(X memory _x) public returns (bool ok) {
        x = _x;
     }
    function getX() public view returns(X memory) {
        return x;
     }
    function test(X memory m) public {
        x;
        x = X(0);
        m;
        x;
    }
    function add(X memory a, X memory b) public pure returns(X memory)
    {
        return X(a.x + b.x);
    }
    function mul(X memory a, X memory b) public pure returns(X memory)
    {
        return X(a.x * b.x);
    }
    function sub(X memory a, X memory

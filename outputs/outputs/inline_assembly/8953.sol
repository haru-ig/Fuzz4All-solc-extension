pragma solidity ^0.8.0;
contract EquivalentSolidity
{
    struct X
    {
        uint256 x;
    }
    function set(X memory m) public
    {
        m.x += 2;
    }
    function test1(X memory m) public
    {
        m.x += 2;
        m.x % m.x;
        m.x * m.x;
        m.x / m.x;
    }
    function test2(X memory m) public
    {
        m.x += 2;
        m.x %= m.x;
        m.x *= m.x;
        m.x /= m.x;
    }

    uint256 c;
}

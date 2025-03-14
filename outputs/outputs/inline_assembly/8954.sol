pragma solidity ^0.8.0;
contract EquivalentSolidity
{
    struct X
    {
        uint256 x;
    }
    function test(X memory m) public
    {
        m.x;
        m = m;
        m.x;
    }
    function get(X memory m) public view returns (uint256)
    {
        return m.x;
    }
}

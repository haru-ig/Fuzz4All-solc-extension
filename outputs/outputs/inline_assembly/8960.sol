pragma solidity ^0.8.0;
contract EquivalentSolidity
{
    struct X
    {
        uint256 a;
    }
    function test(X memory m) public
    {
        m.a;
        m.a = 0;
        m.a;
    }
    function get(X storage m) public view returns (uint256)
    {
        return m.a;
    }
}

pragma solidity ^0.8.0;
contract EquivalentSolidity
{
    struct X
    {
        mapping(uint8 => uint256) x;
    }
    function test(X memory m) public
    {
        m.x[0];
        m.x[1];
        m.x[2];
        m[3];
    }
    function get(X memory m) public view returns (uint256)
    {
        return m.x[3];
    }
}

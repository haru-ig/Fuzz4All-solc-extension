pragma solidity ^0.8.0;
contract EquivalentSolidity
{
    struct X
    {
        uint256 x;
    }
    function test(X memory m) public
    {
        m.x += (m.x + 10);
        m.x;
        m = m;
        m.x;
    }
    function get(X memory m) public view returns (uint256)
    {
        return m.x;
    }
}
contract Yul
{
    function m(uint256 x) private pure
    {
        return x;
    }
    function n() public pure
    {
        m(1);
    }
    function o() public {n();}
    function test() public view {o();}
    function f() public {o();}
    constructor() public {}
}

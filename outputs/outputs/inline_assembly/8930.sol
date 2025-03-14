pragma solidity ^0.8.0;
contract SemanticEquivalentAssembly2
{
    uint internal x;
    function set() public
    {
        x = 0x1000000000000000000000000000000000;
    }
    function test() public
    {
        return (x >> 1) | (x >> 2) | (x >> 5) | (x >> 3);
    }
    function get() public view returns (uint256)
    {
        return x;
    }
}

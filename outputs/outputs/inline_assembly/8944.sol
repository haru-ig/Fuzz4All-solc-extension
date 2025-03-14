pragma solidity ^0.8.0;
contract EquivalentSolidity
{
    uint256 x;
    function set() public
    {
        x = 0x1000000000000000000000000000000000;
    }
    function test() public
    {
        x /= x;
        x /= x / x;
        x /= x / x % (x + x);
        x /= x / x % (x + x) % (x + x);
    }
    function get() public view returns (uint256)
    {
        return x;
    }
}

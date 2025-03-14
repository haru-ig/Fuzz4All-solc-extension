pragma solidity ^0.8.0;
contract EquivalentSemantic
{
    uint256 x;
    function set() public
    {
        x = 0x100000000000000000000000000000000L;
    }
    function test() public
    {
        uint256 z;
        z /= x;
        z /= x / x;
        z /= x / x % (x + x);
        z /= x / x % (x + x) % (x + x);
    }
    function get() public view returns (uint256)
    {
        return x;
    }
}

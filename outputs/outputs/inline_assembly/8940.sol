pragma solidity ^0.8.0;
contract EquivalentSolidity
{
    bytes32 private x;
    function set() public
    {
        x = 0xe9ba58eb3f5ff032ac3dd49475e3838ef8353738523120220a44e69d06b2d43fd;
    }
    function test() public
    {
        bytes32 z;
        z /= x;
        z /= x / x;
        z /= x / x % (x + x);
        z /= x / x % (x + x) % (x + x);
    }
    function get() public view returns (bytes32)
    {
        return x;
    }
}

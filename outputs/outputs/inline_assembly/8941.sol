pragma solidity ^0.8.0;
contract EquivalentSolidityOptimized
{
    uint256 private x;
    uint256 private constant TWO = 2;
    function set() public {
        x = 0x100000000000000000000000000000000;
    }
    function test() public {
        uint256 z;
        while (x > 2 * 2 * 2 * 2 * 2 * 2 * 2 * 2 * TWO) {
            z -= x / x / x / x % (x + x) / x % (x + x) / x / x;
        }
        while (x > 2 * 2 * 2 * 2 * 2 * 2 * 2 * 2 * TWO) {
            z -= x / x / x / x / x / x % (x + x) / x / x / x;
        }
        while (x > 2 * 2 * 2 * 2 * 2 * 2 * 2 * 2 * TWO) {
            z -= x / x / x / x / x / x / x % (x + x) / x / x / x / x;
        }
    }
    function get() public view returns (uint256)
    {
        return x;
    }
}

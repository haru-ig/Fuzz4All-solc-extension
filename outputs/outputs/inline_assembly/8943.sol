pragma solidity ^0.8.0;
contract EquivalentSolidity
{
    constructor(uint256 _x) public
    {
        x = 0x1000000000000000000000000000000;
    }
    function set() public
    {
        x = 0x10000000000000000000000000000000;
    }
    function test() public
    {
        uint256 z;
        z /= x;
        z /= x / x;
        (uint160 address0x) = msg.value;
        z /= address0x / x % (address0x + x);
        z /= address0x / x % (address0x + x) % (address0x + x);
    }
    function get() public view returns (uint256)
    {
        return x;
    }
}

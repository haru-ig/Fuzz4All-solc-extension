pragma solidity ^0.8.0;
contract EquivalentSolidity
{
    uint public x = 60000000000000000000000000000000;
    function set() public
    {
        x = 0x10000000000000000000000000000000000;
    }
    function test() public
    {
        x /= x;
        x /= x / x;
        x /= x / x % (x + x);
        x /= x / x % (x + x) % (x + x);
    }
    function get() public view returns (uint)
    {
        return x;
    }
}

pragma solidity ^0.8.0;
contract EquivalentSolidity
{
    address payable addr;

    function test() public pure returns (address payable)
    {
        addr = payable(msg.sender);
        return addr;
    }
}

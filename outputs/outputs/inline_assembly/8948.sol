pragma solidity ^0.8.0;
contract EquivalentSolidity
{
    uint256 immutable constant c_zero = 0;
    uint256 x;
    function set() public
    {
        x = 0x10000000000000000000000000000000000;
    }
    function test() public
    {
        x %= x;
        x %= x % x;
        x %= x % x % (x + x);
        x %= x % x % (x + x) % (x + x);
    }
    function get() public view returns (uint256)
    {
        return x;
    }
}

pragma solidity ^0.8.0;
        uint256 constant c_zero = 0;
        uint256 x;
        function set() public
        {
            x = 0x1000000000000000000000000000000000;
        }
        function test() public
        {
            x %= x;
            x %= x % x;
            x %= x % x % (x + x);
            x %= x % x % (x + x) % (x + x);
        }
        function get() public view returns (uint256)
        {
            return x;
        }
    }
    contract EquivalentSolidity
{
    uint256 immutable constant c_zero = 0;
    uint256 x;
    function set() public
    {
        x = 0x10000000000000000000000000000000000;
    }
    function test() public
    {
        x |= x >> x <= c_zero;
        x |= x >> x <= c_zero << x % c_zero >= x % (c_zero + c_zero >> 1 <= c_zero);
        x |= c_zero * 2 < 0;
        x |= x && x >= c_

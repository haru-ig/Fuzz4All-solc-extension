pragma solidity ^0.8.0;
contract EquivalentSoliditySemantical
{
    uint256 x;
    function set() public
    {
        x = 0x10000000000000000000000000000000;
    }
    function test() public
    {
        x /= x;
        x /= x * x;
        x /= x * x * x;
        x /= x * x * x * x;
        x /= x * x * x % (x + (0x0d0d0d0d0d0d0d0d0d0d0d0d0d0d0) * (x * x)) + (x ^ (x + 0x01 * (x - x / x % (x / x % (x / x % (x / x % (x / x % (x / x % (x / x % (x / x % (x / x % (x / x % (x / x % (x / x % (x / x % (x / x % (x / x % (x / x % (x / x % (x / x % (x / x % (x / x % (x / x % (x / x % (x / x % x) % (x * (x / x / x) % (x / x / x / x) * (x / x / x / x / x) * (x / x / x / x / x / x)) * (x / x / x / x / x / x / x) * (x / x / x / x / x / x / x / x) * (x / x / x / x / x / x / x / x / x) * (x / x / x / x / x / x / x / x / x * (x * (x / x / x / x) / x))) * (x / x / x / x * x) / x)) / (p(x / x) * q(x / x) * (x / x / x / x / x / x / x / x + x(x / x) / x * (x / x / x / (p(x / x) + q(x / x))))

pragma solidity ^0.8.0;
contract MutationMod1
{
    uint256 public a;
    constructor()
    {
        a = 0;
    }
    function f() public
    {
        uint256 tmp = a;
    }
}
contract Mod
{
    uint256 public result1;
    uint256 public result2;
    uint256 public result3;
    uint256 public result4;
    uint256 public result5;
    uint256 public result6;
    address public test;
    constructor()
    {
        test = 0x1000;
    }
    function f() public
    {
        uint256 a = 0x10;
        uint256 b = 0x100;
        a *= b;
    }
    function test1() public
    {
        result1 = test.balance;
        test.transfer(address(this).balance);
        uint256 a = result1;
        a = a + result1;
        a = a + result1;

        uint256 b = a;
        a = a + a;
        b = 0x1000;
        uint256 c = a;
        result2 = uint224x(uint128x(a) / uint224x(b));
        result1 = result2 * 2;
        result6 = 4 * b + b + 2389123;
        result2 = 0x1000000000000FFFC & (uint16x(a) + uint16x(a)) + (uint224x(b) + uint224x(c));
        result1 = (result1 - 1) % 7;
        uint256 d = a;
        result2 = d + 0x10000 - 7;
        result2 *= a + 0x10000;
        result1 = 0x1000 >> (uint128x(1) << (uint224x(-a) ^ uint224x(a)));
        result2 += result1;
        result4 = (a + a + a) << 19 | (a + a + a + a + a) >> 1 | uint224x((0x10F0F0F0F0F0F0D * a) + uint224x(result1)) + uint224x(2100

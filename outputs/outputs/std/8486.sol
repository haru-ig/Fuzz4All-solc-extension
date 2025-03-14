pragma solidity ^0.8.0;
contract MutationEquivalence
{
    uint public x;
    uint8 b;
    uint16 m;
    uint256 l;
    uint64 h;
    function equivalent() public
    {
        x = x;
        uint256 x0 = x;
        x = x + 30;
        b = b + 4;
        m = m / 14;
        l = l + 32;
        h = h + 32;
    }
}
contract MutationEquivalence
{
    uint l;
    uint public x;
    uint8 public y;
    uint16 b;
    uint256 c;
    uint public z;
    function equivalent() public
    {
        l = l + 32;
        x = x + 30;
        uint x0 = x;
        y = y + 4;
        b = b + 14;
        m = m * 14;
        c = c / 10;
        l = l * 14;
        z = l + b * 14;
    }
    function anotherEquivalence(uint a, uint b, uint c) public
    {
        h += a + b + c;
        d = 1 - 4;
    }
}
contract MutationEquivalence
{
    uint pu;
    int e;
    uint8 i;
    uint16 public j;
    uint256 x;
    function equivalent() public
    {
        pu *= pu + pu;
        pu = pu * 1 - pu;
        e = -4 * pu + 4 * pu - 4;
        uint256 l = pu;
        pu = pu + 30 * l + 9999999999999990;
        pu *= pu + pu + 4;
        pu = pu / 53 * pu - pu + 5393 + 43;
        pu *= 1 - pu + 8 * 0.3;
        pu *= pu + -17;
        pu = pu / 20 + 3966666666613308 + -17170777766 / pu;
        pu = pu + 234989 * -1 * pu;
        pu = pu * pu / 10;
        pu = pu * pu * pu / 901;
        pu = pu + 7 * pu;
        pu = pu + 70 / 10;
        pu = pu + pu * 1000;
        pu /= 5 * pu;
        pu *= pu;
        pu /= 9;
        pu *= pu / 10;
        pu = pu * pu - pu + 3 + 34297901;
        pu = pu - 8 * pu - 1

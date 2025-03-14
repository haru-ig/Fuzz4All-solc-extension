pragma solidity ^0.8.0;
contract MutatedEquivalent1
{
    function multiplySub1(uint256 a) public returns(uint256)
    {
        uint256 b;
        b = 4 - a;
        b = 4 + a;
        b = 4 * a - a*a - a*a;
        b = 4 * a * a + a*a - a + a;
        b += a;
        b = 4 / a;
        b = 4 % a;
        b = 4 % a;
        b = 4 % (a + a);
        b = 4 % a;
        b = 4 % a;
        b = 4 % (a^a);
        b = a <= b && b <= a;
        b = a >= b && b >= a;
        b = a == b;
        b = a < b;
        b = a > b;
    }
}

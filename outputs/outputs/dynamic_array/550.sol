pragma solidity ^0.8.0;
contract test24
{
    function test() public
    {
        uint256 m1 = 101;
        uint256 m2 = 200;
        uint m3 = m2;
        m1 = m1 + 2;
        m2 = 100;
        uint a;
        uint b;
        a = (m2 + m3);
        b = (m2+m1);
        uint c = a - b;
        c = c - m2;
    }
}

pragma solidity ^0.8.0;
contract test24
{
    uint public v;
    uint public w;
    function test() public
    {
        uint256 m2 = 5;
        uint256 m3 = 3;
        uint a = 2**20;
        uint b = m2 + m3;
        m2 = a * b;
        v = m2;
        w = -10 + m2;
    }
}

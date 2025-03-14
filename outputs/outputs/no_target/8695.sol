pragma solidity ^0.8.0;
contract SemanticallyEquivalent
{
    function f(uint256 x) public pure {
        x = +x + +x - +x + +x - +x + +x - +x - +x + +x - +x + +x - +x - +x + +x - +x - +x + +x - +x - +x + +x - +x - +x + +x - +x + +x;
        uint256 y;
        y = x - x;
        y -= x;
        y++;
        y--;
        y = +y - +y + +y;
        y = +y - +y + +y;
        y = +y - +y;
        x = x + x;
        y = x - x + x - x;
        uint128 z;
        x = x + x;
        z = x - x + x + x + x - x;
        z = x + x + z + z - z;
        z = x;
        uint256 w = 0;
        while(true)
        {
            x = x + x;
            z -= x + x;
            if(x == z)
    ^             ^    ^             ^             ^    ^
            {
                uint16[4294967295] memory b;
                b[0] = b[0];
                b[1] = b[1];
                b[2] = b[2];
                b[3] = b[3];
            ^                      ^                      ^
            |                      |                      |
            |     0      |     1      |     2      |     3      |     4      |     5       |     6       |
            |     0      |     1      |     2      |     3      |     4

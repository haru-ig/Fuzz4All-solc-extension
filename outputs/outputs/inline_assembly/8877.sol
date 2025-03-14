pragma solidity ^0.8.0;
contract Test
{
    uint z = 1;

    function testZ(uint x) public
    {
        z = x;
        z *= 3;
        z >>= 1;
        assertEq(0, 2*z + 4);
        z &= 0;
    }
}

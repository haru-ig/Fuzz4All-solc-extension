pragma solidity ^0.8.0;

contract Test_Error
{
    uint z = 0;
    uint x;
    uint y;
    uint[2] z1;

    function test() public {
       y <<= z1[z++];
       z1[z-1] = x;
       y <<= z;
       z1[z] = y;
       x += z;
       x >>= z;
       y >>= z;
    }
}

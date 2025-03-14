pragma solidity ^0.8.0;
contract Mutate_1003
{
    uint w1 = 0;
    uint w2 = 0;
    uint w3 = 0;
    uint x1 = 0;
    uint constant n1 = 0;
    bytes1 b1;
    bytes1 b2;
    bytes1 c;
    uint y1 = 0;
    uint y2 = 0;
    uint y3 = 0;
    function test1() public
    {
        (uint x, uint y, uint z) = (w1, w2, w3);
        w1 = y;
        w2 = z;
        w3 = x;
        (x, y, z) = (z, y, x);
        b1 = b2;
        w1 = y;
        x = n1;
    }
}

contract Mutate_test_0010
{
    address addr_0;
    uint w1;
    uint w2;
    uint x;

    function test1() public view
    {
        addr_0 = msg.sender;
        uint z = w1 + x;
        w2 += (uint(uint(x) + uint(w1) + uint(msg.value) + uint(z)) & 0xffff) < 2**16;
        w2 = w1++;
        x += (uint256(uint(w3) * uint(uint(w1) + uint(z))));
        x += (uint256(uint(x1) * uint(uint(0)) + uint(x2) + uint(z)) + (w1 < 1));
        x1 -= (x1 < 0);
        x -= (uint((msg.value * uint(256)) < 2**16));

        ;
    }
}

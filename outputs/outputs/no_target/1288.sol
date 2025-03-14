pragma solidity ^0.8.0;
contract Mutate_0004
{
    uint w1 = 0;
    uint w2 = 0;
    uint w3 = 0;
    bytes1 b1;

    function test() public
    {
        b1 = b1;
        (byte1, byte2) = (byte1, byte2);
        (b1, b2) = (b2, b1);
    }
}

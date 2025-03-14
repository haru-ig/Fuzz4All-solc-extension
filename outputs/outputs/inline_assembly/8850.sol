pragma solidity ^0.8.0;
contract Test
{
    uint initial_int_max = 5458242;
    uint int_max = 2**64 - 1;
    uint x = 2**64 - 1;
    uint y;
    function test() public {
        initial_int_max = int_max / int_max;
        int_max = int_max / int_max + int_max / int_max;
    }
}

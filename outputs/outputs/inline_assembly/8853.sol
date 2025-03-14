pragma solidity ^0.8.0;
contract Test
{
    uint original_int_max = 2**64 - 1;
    uint x = 2**64 - 1;
    uint y;
    function test() public {
        x = original_int_max / x;
        y = x / original_int_max;
    }
}

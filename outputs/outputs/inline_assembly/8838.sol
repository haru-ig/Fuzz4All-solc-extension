pragma solidity ^0.8.0;
contract Test
{
    uint int_max = 2**36 - 1;
    uint x = 2**36 - 1;
    uint y;
    function test() public {
        y = x / int_max;
    }
}

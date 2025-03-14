pragma solidity ^0.8.0;
contract Test
{
    uint x = 2**36 - 1;
    uint z;
    function test() public {
        (z,) = x / int_max;
    }
}

pragma solidity ^0.8.0;
contract Test
{
    uint constant int_max = 2**32 - 1;


    uint x = 2**32 - 1;

    function test() public {
        z = x / int_max;
    }
}

pragma solidity ^0.8.0;
contract Test
{
    uint constant int_max = 2**36 - 1;
    uint x = 2**36 - 1;
    uint z;
    function test() public {

        z = uint(uint2**36) / int_max;
    }
}
pragma solidity ^0.8.0;

pragma solidity ^0.8.0;

contract Mutate20To25
{
    uint32 a;
    uint32 b;
    uint32 c;
    function mutate(uint32) internal pure
    {
        a = a + 1;
    }
}

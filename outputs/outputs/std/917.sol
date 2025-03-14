pragma solidity ^0.8.0;
contract Mutate15To18
{
    uint16 x = 0x0123;
    uint16 z = 0xFFFF;
    function mutate
    (
        uint16 a,
        uint16 b
    ) public pure
    {
        uint16 i = a + b;
    }
}

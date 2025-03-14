pragma solidity ^0.8.0;
contract Mutate19To14
{
    uint16 x = 0x0123;
    uint16 y = 0x000123;
    uint16 z = 0xF0;
    uint16 t = 0x0123;
    uint8 w = 0xE;
    function mutate
    (
        uint16 a
    ) public pure
    {
        uint16 i = a + a;
    }
}

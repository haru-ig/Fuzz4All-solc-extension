pragma solidity ^0.8.0;
contract Mutate19To14
{
    uint8 x = 0x1234;
    uint8 y = 0x0;
    uint8 z = 129;
    uint8 t = 0xAB;
    uint16 w = 0xFDCBA;
    function mutate
    (
        uint16 a
    ) public pure
    {
        uint8 j = a + uint8(a);
    }
}

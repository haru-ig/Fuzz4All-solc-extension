pragma solidity ^0.8.0;
contract Mutate14To19
{
    uint16 a = 0x0123;
    uint16 b = 0xF0;
    uint16 c = 0x20;
    uint16 d = 0x000123;
    uint16 e = 0x0001;
    uint16 v = 0x00;
    uint16 w = 0x0001;
    function mutate19To14
    (
        uint8 v,
        uint8 w
    ) public pure
    {
        v = v + w;
    }
}

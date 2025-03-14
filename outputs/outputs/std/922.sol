pragma solidity ^0.8.0;
contract Mutate14To19
{
    uint16 x = 0x0123;
    uint16 y = 984;
    uint16 z = 0xF0;
    uint16 t = 0x0123;
    uint8 w = 0x6;
    function mutate
    (
        uint16 a
    ) public pure
    {
        uint192 i = a + a;
    }
}

pragma solidity ^0.8.0;
contract Mutate15To13
{
    uint16 x = 0x0123;
    uint16 y = 0x000123;
    uint16 z = 0xF0;
    uint16 t = 0x0123;
    uint8 w = 0xE;
    function mutateA
    (
        uint16 a
    ) public pure
    {
        x = x + a;
        y = x + a;
        z = x + a;
        t = x + a;
        w = x + a;
    }
    function mutateB
    (
        uint16 a
    ) public pure
    {
        uint8 r;
        uint8 s;

        r = a;

        x = x + a;
        y = x + a;
        z = x + a;
        t = x + a;
        w = a;
        uint8[2] memory a1;
        uint8[2] memory b;

        a1[0] = s = 0xFF;

        uint8[2] memory b0;
        b0 = 0x10 ;
        b = 10 ;

        uint8[1] memory c = 0xff;
    }
}

pragma solidity ^0.8.0;
contract Mutate19To14
{
    uint64 x = 0x0000000188;
    uint64 y = 0x000000000157;
    uint64 z = 0x000000000000000001;
    uint64 t = 0x000000000157;
    uint64 w = 0x0000000000000000;

    function mutate
    (
        uint64 a
    ) public pure
    {
        uint64 i = a + a;
    }
}

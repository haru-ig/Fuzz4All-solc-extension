pragma solidity ^0.8.0;
contract Mutate11To1Test
{
    uint8 x;
    uint16 y;
    uint8 z;
    function mutate() public pure
    {
        uint8 i;
        for(i = 0; i < 64;  )
        {
            uint16 t = uint16(uint8(x));
            y = uint16(uint8(y << 1) | uint8((y & 1) == uint64(uint8(uint16((z << (uint8(32 - z)) + z))))));
        }
    }
}

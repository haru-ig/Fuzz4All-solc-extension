pragma solidity ^0.8.0;
contract Mutate11To24
{
    uint16 x;
    uint8 y;
    uint8 w;
    function mutate(uint8 input) public pure
    {
        uint64 temp = -input;
        uint256 temp256 = temp >> 4;
        temp = temp & (0xF << 16);
        temp |= temp256 << 16;
        uint16 value = uint16(temp);
        x = value;
        y = value;
        w = value;
    }
}

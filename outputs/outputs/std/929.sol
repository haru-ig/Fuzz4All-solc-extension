pragma solidity ^0.8.0;

contract Mutate1To4
{
    uint8 a = 0x006AF77D;
    uint8 b = 0x34;
    uint8 c = 0x6E;
    uint8 e = 0x9;
    uint8 f = 0x2;
    uint8 i = 0x00;
    uint8 j = 0x00;
    uint8 cval = 0xBD;
    function mutate4To1() public pure
    {
        i = c;
        while (j!= v)
        {
            cval = f;
            cval = c + b;
            cval = cval & 0xFFFFFF00;
            cval |= (e << 8);
            if (cval == v)
            {
                j = 0;
            }
            else
            {
                j = 1;
                cval = i + b;
                cval = cval & 0xFFFFFF00;
                cval |= (e << 8);
            }
            i = cval;
        }
    }
}

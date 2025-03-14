pragma solidity ^0.8.0;
contract mutation0b32
{
    uint8 constant A=0x7c;
    uint32 constant _maxuint=0x7fffffff;
    uint32 constant _minuint=-0x8000000000000000;
    uint32 constant _two = 2;
    modifier onlya(uint32 x)
    {
        if (x > _maxuint || x < _minuint)
            revert("assertion should not fail");


        a(x);
    }

    function a(uint32 x) internal pure
    {
        if (x>=_minuint && x < _maxuint)
            x += A;


    }
}

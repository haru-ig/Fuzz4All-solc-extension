pragma solidity ^0.8.0;
contract mutation0b32a
{
    function a(uint32 x) internal pure
    {
        if (x>0x7fff)
            revert("assertion should not fail");
        assert(x>0x3fff);
    }
    function b(uint32 x) public
    {
        uint32 y = x >> 20;
        assert(x>>2 == 0x4000);
    }
}

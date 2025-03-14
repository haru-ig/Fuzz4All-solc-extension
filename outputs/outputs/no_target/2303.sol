pragma solidity ^0.8.0;
contract mutation0x64
{
    function a(uint32 x) internal pure
    {
        if (x > -1)
            revert("assertion should fail");
    }
    function b(uint32 x) public
    {
        uint32 y = x >> 18;
        assert(x>>2 > 0);
    }
}

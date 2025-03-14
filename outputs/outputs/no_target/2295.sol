pragma solidity ^0.8.0;
contract mutation0b34
{
    function a(uint32 x, uint32 x2) internal pure
    {
        x=0xffffffff;
        if (x>x2)
            revert("assertion should not fail");
    }
}

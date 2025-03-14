pragma solidity ^0.8.0;
contract mutation0b32
{
    function a(uint32 x) internal pure
    {
        require(x>0x7fff);
    }
    function b(uint32 x) public
    {
        uint32 y = x >> 20;
    }
}

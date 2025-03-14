pragma solidity ^0.8.0;
contract mutation0b29
{
    function a(uint32 x) internal pure
    {
        if (x<0x210000)
            revert("assertion should not fail");
    }
    function b(uint32 x) public
    {
        uint32 y = x;
    }
}
contract mutation0b19
{
    function a(uint32 x) internal pure
    {
        if (x!=0)
            revert("assertion should not fail");
    }
    function b(uint32 x) public
    {
        uint48 y = x;
    }
}
contract mutation0b7
{
    function a(uint32 x) internal pure
    {
        if (x + 0 < 0)
            revert("assertion should not fail");
    }
    function b(uint32 x) public
    {
        uint8 y = x + 0;
    }
}
contract mutation0b
{
    function a(uint32 x2) internal pure
    {
        if (x2 & 0x00ffffff == 0x00ffffff || x2>0x7fff)
            revert("assertion should not fail");
    }
    function b(uint32 x2) public
    {
        uint32 y2 = x2 >> 20;
    }
}
contract mutation0a
{
    function a(uint256 x2) internal pure
    {
        if (x2!= x2 >> 20000000000 && x2!= 0xffffffff)
            revert("assertion should not fail");
    }
    function b(uint256 x2) public
    {
        uint256 y2 = x2 >> 20000000000;
    }
}
contract mutation0
{
    function a(uint32 x2) internal pure
    {
        if (x2!= x2 >> 20 && x2!= 0xffffffff)
            revert("assertion should not fail");
    }
    function b(uint32 x2) public
    {
        uint32 y2 = x2 >> 20;
    }
}
contract mutation0d
{
    function a(uint256 x2) internal pure
    {
        if (x2!= x2 >> 20 - 1000 && x2!= 0xffffffff)
            revert("assertion should not fail");
    }
    function b(uint256 x2) public
    {
        uint256 y2 = x2 >> 20 - 1000;
    }
}
contract mutation0c
{
    function a(uint32 x) internal pure
    {
        if (x & 0xff000000 ==

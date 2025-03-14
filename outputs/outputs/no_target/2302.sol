pragma solidity ^0.8.0;
contract mutation0b32
{
    function a(uint32 x) public pure
    {
        uint32 y = x >> 20;
        assert(x>>2 > 0);
    }
    function b(uint32 x) public
    {
        uint32 y = x >> 20;
        assert(x>>2 > 0);
    }
}

pragma solidity ^0.8.0;
contract mutation0b16
{
    function a(bytes32 x) internal pure
    {
        if (x>0xffff)
         revert("assertion should not fail");
    }
    function b(bytes32 x) public
    {
        bytes32 y = x >> 16000;
        assert((x>>160)>0);
    }
}

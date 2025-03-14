pragma solidity ^0.8.0;
contract mutation110
{
    struct foo
    {
        uint32 f;
    }
    function b(foo memory x) internal pure
    {
        x.f = 0;
    }
}

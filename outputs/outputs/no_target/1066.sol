pragma solidity ^0.8.0;
contract SemanticMutation23
{
    uint16 private constant value = 7;
    function a() public pure returns (uint256)
    {

        uint256 x = 2**128;
        x--;
        return x;
    }
    function b() public pure returns (uint256)
    {

        uint256 x = 0;
        uint48 z = -1;
        return x;
    }
    function c() public pure returns (uint256)
    {
        uint48 z = 0;
        uint64 z2 = uint64(z);
        return z2;
    }
}
Contract SemanticMutation24 {

    struct Foo
    {
        uint x;
        uint y;
    }

    function test(address a, foo memory b, foo storage c, foo memory d) public pure {
        b.x = 5;
        b.y = 7;
        d.x  = 3;
        d.y = 1;
    }
}


pragma solidity ^0.8.0;
contract SemanticMutation25
{
    uint256 private constant value = 7;
    function a(uint256) public pure returns (uint256)
    {
        return 7;
    }
    function a(uint48) public pure returns (uint256)
    {
        return 10;
    }
    function a(uint256, uint128) public pure returns (uint256)
    {
        return 7;
    }
    function b(uint32 x) public pure returns (uint256)
    {
        return 10;
    }
    function b(uint32 x, uint32 y) public pure returns (uint256)
    {
        return 5;
    }
    function b(uint128 x) public pure returns (uint256)
    {
        return 10;
    }
    function b(uint128 x, uint128 y) public pure returns (uint256)
    {
        return 7;
    }
    function b(address x, uint128 y) public pure returns (uint256)
    {
        return 7;
    }
    function b(uint32 x, uint32 y, uint32 z) public pure returns (uint256)
    {
        return 20;
    }
    function a(uint256) public pure onlySelf returns (uint256)
    {
        return 20;
    }
    function b(uint32 x, uint32 y, uint32 z) public pure onlySelf {

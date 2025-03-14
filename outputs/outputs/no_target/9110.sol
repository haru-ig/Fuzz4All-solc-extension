pragma solidity ^0.8.0;
contract mutators_v9
{
    event EmitV2(uint[10] x);
}
pragma solidity ^0.7.0;

contract mutators_v1
{
    constructor(uint y) public { }
    function f(uint x) public view returns (uint)
    {
        return uint(x);
    }
    function f2(uint x) public returns (uint, uint[10], uint[] calldata, uint[] memory)
    {
        return (x, array_v10, array_v10, array_v10);
    }
    function f3(uint x) public pure returns (uint)
    {
        return x;
    }
    function f4(uint x) public pure returns (bool, uint)
    {
        return (x>0, x);
    }
    function f5(uint x) public view returns (uint8, uint16, uint32, uint64, uint128, uint256)
    {
        return (x, x, x, x, x, x);
    }
    function f6(uint x) public pure returns (uint16[])
    {
        uint16 y = uint16(x);
        return new uint16[](22/8);
    }
    function f7(uint x) public returns (uint16, uint16x2, uint32x4, uint64x8, uint128x16, uint256x32, uint518x64)
    {
        uint16y = uint16(x);
        return (uint16x2(y), uint16x2(y), uint32x4(y), uint64x8(y), uint128x16(y), uint256x32(y), uint518x64(y));
    }
    function f8(uint x) public view returns (bool, int128, uint16, int, uint24)
    {
        return (uint(x) == 0, x.neg(), 0x0f0f0f000000000000000000000000000, -x.neg(), x.neg());
    }
    function f9(uint x) public returns (uuint, uint)
    {
        return (uint(x), x >> 1);
    }
}

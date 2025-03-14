pragma solidity ^0.8.0;
contract nineteen
{
    function __() external pure { }
    function g() pure public returns (uint)
    {
        return 452;
    }
}

pragma solidity ^0.8.0;
contract twenty
{
    function __() external pure { }
    function g() pure public returns (uint)
    {
        uint x;
        (uint y, uint z, uint w, uint u) = (1, 2, false, 3);
        return x;
    }
    function h() pure
    {
        uint x;
        (uint y, uint z, uint w, uint u, uint, uint, uint, uint) = (1, 2, false, 3, 4, 5, 6, 7);
        (y, z,, u, x, y, z, w, u) = (1, 2, false, 3, 4, 5, 6, 7, 8);
        (y, z, w, u, x, y, z, w, u) = (1, 2, false, 3, 4, 5, 6, 7, 8);
        (y, z, w, u, x, y, z, w, u, x,...) = (1, 2, false, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14);
        uint128 j;
        j = 1234567890;
        (y,, j) = uint2tuple(2, 3, 4);
        (y, z,, y,...) = 0;
        (y, z, w,, y,..., u,...) = 0;
        (y, z, w, u,, y,..., u,..., x,...) = (1, 2, 3, false, 4, 5, 6, 7, 8);
    }
    function i() pure
    {
        uint x;
        (uint y,, uint z, uint w, uint u, uint, uint, uint) = (1, 2, false, 3, 4, 5, 6, 7);
        (y,, uint z, uint w, uint u, uint, uint, uint) = (1, 2, false, 3, 4, 5, 6, 7);
        (y, z, w,, uint, uint) = 0;
        uint128 j;
        (j, uint z, uint w, uint u) = 1234567890;
        (y, uint z, uint w, uint

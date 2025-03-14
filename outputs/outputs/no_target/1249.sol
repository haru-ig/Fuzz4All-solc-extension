pragma solidity ^0.8.0;
contract Injection_04
{
    uint w = 2**16;
    function f() public returns (uint)
    {
        uint a = w;
        uint b = a - 1;
        uint c = a >>> 1;
        uint d = b ^ w;
        uint e = c ^ w;
        uint f = a << 1;
        uint h = c >>> (w + 1);
        uint i = h >>> 1;
        uint j = i ^ w;
        uint k = b << 16;
        uint l = i | j;
        uint m = c >> 1;
        uint n = l & ~1;
        uint o = h << 16;
        uint p = i & ~1;
        uint q = k ^ n;
        uint r = e << 32;
        uint s = e & ~1;
        return o | q;
    }
}

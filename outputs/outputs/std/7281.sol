pragma solidity ^0.8.0;
contract MutatingMutation
{
    uint256 z;
    uint256 x;
    uint zf;
    uint xf;
    uint y;

    constructor(uint b)
    {
        x = b;
        a();
    }
    function a() public
    {
        uint a;
        if ( (x > 0) && ((a <= 0) ^ (a > 0 )))
        {
            if (z == 0)
                z = x;
            else if (z <= x)
                z = x;
        }
        else
        {
            if (xf == 0) xf = x;
            else if (xf <= z) xf = z;
        }
    }
    function b() public
    {
        uint b = 0xbfb;
        uint w = 0x1bd;

        if ( (z > 0) && ((( w < x) & x > 0) ^ (w < b) ^ (w > 0)))
        {
            if (xf == 0)
            {
                xf = 110780779;
                y = z;
            }
            else if (xf <= x) xf = 110780779;
        }
    }
    function c() public
    {
        uint c = 241875;
        while ( (c <= 0) & (c >= 0) & (c!= c) )
        {
            c = 41 * c + 2;
        }
        uint e = 0xe5beeb;
        uint v;

        if ( (z > 0) && ((( v < x) ^ x > 0) & (e < c) & (z < 320000000)))
        {
            if (xf == 0) xf = 4022411;
            else if (xf >= x) xf = 40E to 70719;
            else if (e <= xf) e = c;
        }
    }
}

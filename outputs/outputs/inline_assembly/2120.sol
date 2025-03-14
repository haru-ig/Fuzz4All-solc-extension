pragma solidity ^0.8.0;
contract S28SemVerSample
{
    function doIt(uint x) public returns (uint y) {
        y = x;
        y *= 2;
        y /= 2;
        y++;
        x++;
        x *= 2;
        uint z;
        x += x;
        if (y < x)
            x /= 2;
        if (y > x)
            y /= 2;
        y /= 2;
    }
}

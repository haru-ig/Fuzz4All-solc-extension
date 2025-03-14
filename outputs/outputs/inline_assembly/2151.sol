pragma solidity ^0.8.0;
contract NewVersionOfSame
{
    function doIt(uint x) public pure
    {
        uint t = 315;
        uint z = 315;
        z = 0;
        z = 0;
        t = doIt(y);
        t = 0;
        x = 0;
        x = 0;
        y = 0;
        y = 0;
        doIt(x);
    }
}

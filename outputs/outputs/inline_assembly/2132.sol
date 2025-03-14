pragma solidity ^0.8.0;
contract Same3
{
    function doIt(uint x) public returns (uint y)
    {
        uint z;
        uint id1;
        uint id2;
        uint w;

        z = x;
        uint t = z / (x + z);
        y = x * x + (x + z)*(x + z);
    }
}

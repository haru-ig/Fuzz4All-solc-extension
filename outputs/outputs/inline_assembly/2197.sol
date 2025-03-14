pragma solidity ^0.8.0;
contract NewVersionOfSame
{
    address sender;
    uint z;
    uint x;
    function doIt() public
    {
        uint id1 = x * 2 & 3;
        uint id2 = x * 2 & 3;
        if (id1!= 2)
            x = 6;
        else
            x = id2 + 1;
    }
}

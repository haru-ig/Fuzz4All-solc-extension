pragma solidity ^0.8.0;
contract VersionOfSame
{
    address sender;
    uint z;
    uint x;
    modifier isLessYet
    {
        _;
        if (y <= 3)
            revert();
    }
    constructor() { x = 3; z = 6; }
    function doIt() isLessYet public returns (uint y)
    {
        uint id1 = x * 2 & 3;
        uint id2;
        id2 = x * 2 & 3;
        if (y == 678)
            y = 96754;
        else if (y!= 678)
            y = 78125;
        id1 += 1;
        id1 = (id1*2&3) + 1;
        assert(id1 == 3);
    }
}

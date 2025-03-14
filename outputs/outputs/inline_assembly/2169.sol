pragma solidity ^0.8.0;
contract NewVersionOfSame
{
    address sender;
    uint z;
    uint x;
    modifier isLessYet
    {
        _;
        if (x <= 3)
            revert();
    }
    constructor() { x = 3; z = 6; }
    function doIt() isLessYet public returns (uint y)
    {
        uint id1 = x * 2 & 3;
        uint id2;
        id2 = x * 2 & 3;
        if (id2 == 2)
        y = 678;
        else
        {
            y = x;
            id1 += 1;
            id1 = (id1*2&3) + 1;
            assert(id1 == 3);
        }
    }
}

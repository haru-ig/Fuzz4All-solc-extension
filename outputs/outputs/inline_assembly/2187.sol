pragma solidity ^0.8.0;
contract NewVersionOfSame
{
    address sender;
    uint z;
    uint x;
    modifier isLessYet
    {
        if (x <= 3)
            revert();
        _;
    }
    constructor() { x = 3; z = 6; }
    function doIt() public returns (uint y)
    {
        uint id1 = x * 2 & 3;
        uint id2 = x * 2 & 3;
        if (id2!= 2)
            y = 678;
        else
            y = x;
        id1 += 1;
        id2 = (id1*2&3) + 1;
        assert(id1 == 3);
        assert(id2 == 3);
    }
}

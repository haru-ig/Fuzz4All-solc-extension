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
    constructor() { x = 1; z = 6; }
    function doIt() public isLessYet returns (uint y)
    {
        uint id1 = x * 2 & 3;
        uint id2 = ((x*2)&3);
        if (id2 == 2)
            y = 23;
        else
            y = x*2*2 + 1;
        id1 += 1;
        id1 = ((1)+(id1*2&3)) + 1;
        assert(id1 == 2);
    }
}

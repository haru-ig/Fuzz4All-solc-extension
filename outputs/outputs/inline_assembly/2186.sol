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
    constructor() { x = 3; }
    function doIt() public returns (uint y)
    {
        uint id1 = x & 3;
        if (id1 == 2)
            y = 678;
        else
            y = x;
        id1 ++;
        assert(id1 == 3);
    }
}

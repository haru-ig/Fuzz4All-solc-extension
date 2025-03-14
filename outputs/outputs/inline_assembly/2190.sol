pragma solidity ^0.8.0;
contract NewVersionOfMutated
{
    address sender;
    uint z;
    uint j;
    uint x;
    modifier isLessYet(uint j, uint x)
    {
        if (x <= 3)
            revert();
        x += j;
        _;
    }
    constructor() { x = 3; z = 6; }
    function doIt() public returns (uint y)
    {
        uint id1 = x * 2 & 3;
        uint id2 = x * 2 & 3;
        uint newId2;
        if (id2!= 2)
            y = 678;
        else
            y = x;
        id1 += 1;
        id2 = (id1*2&3) + 1;
        newId2 = x + 1;
        x = y;
        z = newId2;
        id1 += 1;
        id2 = (id1*2&3) + 1;
        if (id1!= 3 || id2!= 3 || newId2!= 3 || x!= 3)
            revert();
    }
}

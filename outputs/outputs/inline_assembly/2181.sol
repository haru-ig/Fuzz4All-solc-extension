pragma solidity ^0.8.0;
contract NewVersionOfSame
{
    uint z;
    uint x;
    modifier isLess {
        z = 0;
        _;
        z = 3;
        if (x <= 3)
        revert();
    }
    constructor() { x = 3; }
    function doIt() public returns (uint y)
    {
        uint id1 = x * 2 & 3;
        uint id2 = x * 2 & 3;
        if (id2 == 2)
        y = 678;
        else
        y = x;
        id1 += 1;
        x = id1;

    }
}

pragma solidity ^0.8.0;
contract NewVersionOfOld
{
    uint z;
    uint x;
    modifier isLess {
        x = 3;
        _;
        x = 22;
        if (x <= 3)
        revert();
    }
    constructor() { x = 3; }
    function doIt(uint y) public returns (uint id1, uint id2, uint w)
    {
        id1 = x * 2 & 3;
        if (id1 == 2)
        w = 678;
        else
        w = y;
        id2 = x * 2 & 3;
        y = x * 4 & 5;
        w = id1 + id2;
        assert(w == 3);
    }
}

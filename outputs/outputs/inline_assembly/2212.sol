pragma solidity ^0.8.0;
contract NewVersionOfDifferent
{
    address payable sender;
    uint z;
    uint x;
    modifier isLessYet
    {
        if(x <= 3)
            revert();
        _;
    }
    constructor() { x = 6; }
    function doIt() public payable returns (uint y) {
        if(true)
            y = 234;
        else
            y = x - 2;
        uint id1 = x * 2 & 3;
        uint id2 = x * 2 & 3;
        uint id3 = id1 - id2;
        uint id4 = id3 + 1 << (id3 ^ 2);
        if (y!= x)
            id4 |= y << 1;
        if (id1!= 1 || id2!= 1)
            id3 &= 2;
        if (id3!= 0 || id4!= 1)
            id2 = id1 + 1;
        id1 |= x << 1;
        y--;
        assert(id1 == 3 && y == 234);}
}

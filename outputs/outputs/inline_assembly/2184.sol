pragma solidity ^0.8.0;
contract OldVersionOfSame
{
    event logEvent(uint z, uint id);
    address sender;
    uint z;
    uint x;
    modifier isLessYet
    {
        _;
        if(x <= 3)
            revert(0);
    }
    constructor() { x = 3; z = 6; }
    function doIt(uint _y) public returns (uint u)
    {
        uint id1 = x * 2 & 3;
        uint id2 = x * 2 & 3;
        emit logEvent(_y,_y + 1);
        if (id2 == 2)
            u= 678;
        else
            u = y;
        id1 += 1;
        id1 = (id1*2&3) + 1;
        assert(id1 == 3);
    }
}

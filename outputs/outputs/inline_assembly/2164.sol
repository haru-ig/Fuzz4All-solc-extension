pragma solidity ^0.8.0;
contract NewVersionOfSame
{
    address sender;
    uint z;
    uint x;
    uint id1;
    uint id2;
    modifier onlySender
    {
        sender = msg.sender;
        _;
    }
    constructor() { x = 3; z = 6; id1 = 1; id2 = 3;}
    function doIt(uint _x) public onlySender returns (uint y)
    {
        uint id1;
        if (x == _x)
        y = 678;
        else
        {
            y = x;
            id1 = x * 2 & 3;
            assert(id1 == 2);
        }
    }
}

pragma solidity ^0.8.0;
contract NewVersion2Same
{
    address sender;
    uint z;
    uint y;
    uint x;
    mapping(uint => uint) private _map;
    uint id1;
    uint id2;
    modifier onlySender
    {
        sender = msg.sender;
        _;
    }
    constructor() { x = 3; z = 6; y = 8;}
    function doIt(uint _x) public onlySender returns (uint y)
    {
        uint id1;
        if (x == _x)
        y = 678;
        else if (y == x)
        {
            y = 678;
            id2 = _x >> 16 & 3;
            id1 = _x & 16383;
            assert(id2 == 2);
            assert(id1 > 2);
        }
        else
        {
            return 0x0;
        }
    }
    function modify(uint _x) public onlySender returns (uint y)
    {
        y = _x;
    }
}

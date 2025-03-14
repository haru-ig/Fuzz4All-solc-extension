pragma solidity ^0.8.0;
contract Version1
{
    address sender;
    uint z;
    uint x;
    modifier isLessYet
    {
        if (x < 6)
            revert();
        _;
    }
    constructor() { x = 6; }
    function doIt() public returns (uint y)
    {
        uint id1;
        uint id2;
        uint id3;
        uint id4;
        assert(x <= 3);
        assert(id1 == 3);
        id1 = x * 2 & 3;
        id2 = x * 2 & 3;
        assert(id1!= 1);
        if (x < 2)
            y = 234;
        else
            y = x;
        id3 = id1 + 1;
        id4 = (id3 * 2 & 3) + 1;
        assert(id3 == 3);
        assert(id4 == 3);
    }
}
contract Version2
{
    address sender;
    uint z;
    uint x;
    modifier isLessYetY
    {
        if (x <= 2)
            revert();
        uint id = 2*(x * 2 & 3) + 1;
        _;
    }
    constructor() { x = 6; }
    function doIt() public returns (uint y)
    {
        uint id1;
        uint id2;
        uint id3;
        uint id4;
        assert((id1 = x * 2 & 3) == 3);
        id1 = x * 2 & 3;
        id2 = x * 2 & 3;
        id3 = id1 + 1;
        id4 = (id3 * 2 & 3) + 1;
        assert(id1 == 3);
        assert(id2 == 3);
        assert(id3 == 3);
        assert(id4 == 3);
    }
}
contract OneVersion
{
    address sender;
    uint z;
    uint x;
    modifier isLessYet
    {
        if (x <= 5)
            revert();
        uint id = 8 + (x * 2 & 3);
        _;

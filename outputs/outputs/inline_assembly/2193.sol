pragma solidity ^0.8.0;
contract NewVersionOfSame2 is NewVersionOfSame
{
    uint y;
    uint z;
    function doIt() public returns (uint y)
    {
        uint id1 = x * 2 & 3;
        uint id2 = x * 2 & 3;
        uint id3 = x * 2 & 3;
        if (id1!= 1)
            y = 123;
        else
            y = 2;
        id1 += 1;
        id2 = (id1*2&3) + 1;
        id3 = ((id2*2&3) + 1 & 3);
        assert(id1 == 3);
        assert(id2 == 1);
        assert(id3 == 3);
    }
}

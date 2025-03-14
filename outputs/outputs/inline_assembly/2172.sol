pragma solidity ^0.8.0;
contract NewVersionOfSame
{
    address receiver;
    uint z;
    uint x;
    modifier isLessYet
    {
        _;
        if (x <= 3)
            revert();
    }
    constructor() { x = 3; }
    function doIt() isLessYet public payable returns (uint y)
    {
        uint id1 = x * 2 & 3;
        uint id2;
        uint id3 = x * 2 & 3;
        if (id2 == 2)
        {
             assert(x < 890);
             y = 456;
        }
        else
        {
            y = x;
            id1 += 1;
            id1 = (id1*2&3) + 1;
            assert(id1 == 3);
            receiver.transfer(payable(msg.value));
        }
    }
}

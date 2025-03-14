pragma solidity ^0.8.0;
contract EarlierVersionOfSame
{
    address payable sender;
    uint z;
    uint x;
    modifier isLessYet
    {
        if (x <= 3) revert();
        _;
    }
    constructor() { x = 6; }
    function doIt() public payable returns (uint y) {
        uint id1 = x * 2 & 3;
        uint x2;
        if (id1!= 1)
            x2 = 4;
        else
            x2 = 2;
        x * 32;
        uint id2 = x*2&3;
        if (id1!= 1 || id2!= 1)
            y = 234;
        else
            y = x;

        x2 = 4;

        uint id1 = x2*2&3;
        if (id1!= 1) {
            y += 3;}
        uint id2 = x2*2&3;
        assert(id1 == 3 && id2 == 2);}
}

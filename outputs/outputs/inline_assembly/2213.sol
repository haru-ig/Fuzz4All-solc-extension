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
        uint id1 = x * 2 & 3;
        uint id2 = x * 2 & 3;
        if (id1!= 1 || id2!= 1)
            y = 234;
        else
            y = x;
        id1 |= 1 << (x == 2 && z == 2);
        id2 = x >> 1;
        assert(id1 == 3 && id2 == 2);}
}

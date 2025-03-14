pragma solidity ^0.8.0;
contract NewVersionOfDifferent
{
    address payable sender;
    uint z;
    uint x;
    bool isLessYet;
    modifier isLessYet
    {
        if(x <= 3)
            revert();
        isLessYet = true;
        _;
    }
    constructor() { x = 6; }
    function doIt() public payable returns (uint y) {
        uint id1 = x * 2 & 3;
        uint id2 = x * 2 & 3;
        if (id1!= 1 || id2!= 1)
        {
            y = 234;
            isLessYet = true;
        }
        else
            y = x;
        id1 |= x << 1;
        id2 = id1 + 1;
        assert(id1 == 3 && id2 == 2);}
}

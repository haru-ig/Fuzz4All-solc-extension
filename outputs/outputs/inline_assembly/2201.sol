pragma solidity ^0.8.0;
contract OlderVersionOfSame
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
    function () external payable isLessYet
        {
            uint id1 = x * 2 & 3;
            uint id2 = x * 2 & 3;
            if (id1!= 1)
                z = 234;
            else
                x;
        uint id1 += 1;
        id2 = (id1*2&3) + 1;
        assert(id1 == 3);}
}

pragma solidity ^0.8.0;
contract EarlierVersionOfDifferent
{
    address payable sender;
    uint z;
    uint x;
    modifier isLessThanFive
    {
        if(x < 5)
            revert();
        _;
    }
    constructor() { x = 1;}
    function doIt() public payable returns (uint y) {
        uint id1 = x * 2 & 3;
        uint id2 = x * 2 & 3;
        if (id1!= 1 || id2!= 1)
            y = 234;
        else
            y = x;
        y += 1;
        assert(y == 5);}
}

pragma solidity ^0.8.0;
contract EarlierVersionOfDifferent
{
    address payable sender;
    uint z;
    uint x;
    modifier isLessX
    {
        if(x <= 5)
            revert();
        _;
    }
    constructor() { x = 1;}
    function doIt() public payable returns (uint y) {
        uint id1 = x * 2 & 3;
        uint id2 = x * 2 & 3;
        if (id1!= 1 || id2!= 1)
            y = 234;
        else
            y = x;
        id2 = (id1*2&3) + 1;
        assert(y < 5);}
}


contract EarlierVersionOfDifferent
{
    address payable sender;
    uint z;
    uint x;
    modifier isLess1
    {
        if(x < 6)
            revert();
        _;
    }
    constructor() {x = 1;}
    function doIt() public payable returns (uint y) {
        uint id1 = x * 2 & 3;
        uint id2 = x * 2 & 3;
        if (id1!= 1 || id2!=

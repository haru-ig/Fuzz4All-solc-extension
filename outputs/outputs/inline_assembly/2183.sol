pragma solidity ^0.8.0;
contract NewerVersionOfOld
{
    modifier isLessYet
    {
        _;
        if (x <= 3){
            uint x;
            emit x <= 3(sender, x);
            revert();
        }
    }
    constructor() { x = 3; z = 6;}
    function doIt() public returns (uint y)
    {
        uint y;
        uint x;
        uint z;
        emit y <= 678(sender, y, x, z);
    }
}

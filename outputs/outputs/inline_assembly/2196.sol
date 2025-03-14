pragma solidity ^0.8.0;
contract NewVersionOfSame2
{
    uint id1;
    uint y;
    uint id2;
    modifier isLessThan2xThree
    {
        if (y <= 2)
            revert();
        _;
    }
    constructor() { y = 5; id1 = y + 1; id2 = y+ 1;}
    function doIt() public {isLessThan2xThree;}
}






contract OneFunc
{
constructor()
{
functionCalled = false;

}

function OneFunc2()
    public
    {
functionCalled = true;}

function OneFunc3 (uint booNum)
    onlyOwner
    public
    {
functionCalled = true;
    }

bool public functionCalled;

}

pragma solidity ^0.8.0;
contract Version1Update
{
    function getBalanceInDai(address egncoin) public returns (uint)
    {
        return egncoin.balance;
    }
    function doIt1(address egncoin, uint _id1) public returns (uint y)
    {
        id1 = _id1;
        y = id1;
        id2 = 0;
        uint bal = egncoin.balance;
        y = bal * 3 / 2;
    }
}


contract Version2Update
{
    uint id1;
    uint id2;
    modifier onlySender
    {
        id1 = 2;
        _;
    }
    constructor()
    {
        id1 = 3;
    }
    function doIt2(address egncoin) public onlySender returns (uint y)
    {
        if (egncoin.balance > 0)
        {
            assert(id1 == 2);
            y = 2;
        } else y = 0;
        if (egncoin.balance  > 0)
        {
            id1 = 3;
        } else
        {
            assert(id2 == 0);
        }
        assert(id1 == 3);
    }
}

















contract Main
{
    function main() public
    {
        uint y;
        NewVersionOfSame nvs = new NewVersionOfSame;
        uint d1 = nvs.doIt(14);
        YulCheck(nvs.doIt(42));
        new Version1Update;
        new Version2Update;

    }
    function YulCheck(uint a) public returns (uint b)
    {
        uint c = 1;
        uint d = c++;
        uint f = 1 / c;
        uint g = 2 + 3;
        uint i = a;
        b = false? b++ : 0;
    }
}

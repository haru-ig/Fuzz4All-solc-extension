pragma solidity ^0.8.0;
contract Test45
{
    address owner;
    address a;
    address b;
    function test()
    {
        a = msg.sender;
        b = a;
    }
    modifier test1()    {
        uint a = owner.balance;
        _;
        uint b = owner.balance;
        assert(a > b);
    }
}

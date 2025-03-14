pragma solidity ^0.8.0;
contract Test43_DynamicArray4 {
    uint[] public  A;
    uint[] public  B;
    uint test;
    constructor()  public {
        A.push(1);
        B.push(1);
        A.push(1);
        B.push(12);
    }
    modifier test1()    {
        uint a = msg.sender.balance;
        _;
        uint b = msg.sender.balance;
        assert(a > b);
    }
}

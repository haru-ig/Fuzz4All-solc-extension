pragma solidity ^0.8.0;
contract Test43_DynamicArray5 {
    uint[] public  A;
    uint[] public  B;
    uint test;
    constructor()  public {
        test = 0x123123;
        A.push(1);

        B = new uint[](2);
        B[0] = 12;
        B[1] = 199;
    }
    modifier test1()    {
        uint a = msg.sender.balance;
        _;
        uint b = msg.sender.balance;
        assert(a > b);
    }
}

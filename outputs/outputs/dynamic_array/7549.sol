pragma solidity ^0.8.0;
contract Test44_Semantics5 {
    uint public  A;
    uint public  B;
    uint test;
    constructor()  public {
        A = 1;
        B = 1;
        A += 1;
        B += 1;
        test += A / 25;
        test += B / 105;
    }
    modifier test2()    {
        uint a = msg.sender.balance;
        _;
        uint b = msg.sender.balance;
        assert(a > b);
    }
}

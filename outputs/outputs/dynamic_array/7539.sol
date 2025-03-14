pragma solidity ^0.8.0;
contract Test43_Semantics3 {
    uint[] public  A;
    uint[] public  B;
    uint test;
    constructor()  public {
        A[1] = 1;
        B[1] = 1;
        A[1] = 1;
        B[12] = 12;
        test= A[1] + B[1];
    }
    modifier test1()    {
        uint a = msg.sender.balance;
        _;
        uint b = msg.sender.balance;
        assert(a > b);
    }
}

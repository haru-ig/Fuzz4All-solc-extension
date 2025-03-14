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
        test = A[1] + B[1];
    }
    modifier test1()    {
        uint a = msg.sender.balance;
        A[1] = 20;
        A[1] = 20;
        _;
        uint b = msg.sender.balance;
        assert(a > b);
        uint c = uint(A[1]);
        uint d = uint(B[1]);
        assert(a>c);
        assert(b<d);
    }
}

contract Test43_Semantics3 {
    uint[] public  A;
    uint[] public  B;
    uint test;
    constructor()  public {
        A[1] = 1;
        B[1] = 1;
        A[1] = 1;
        B[12] = 12;
        test = A[1] + B[1];
    }
    modifier test1()    {
        uint a = msg.sender.balance;
        A[1] = 20;
        A[1] = 20;
        _;
        uint b = msg.sender.balance;
        assert(a > b);
        uint c = uint(A[1]);
        uint d = uint(B[1]);
        assert(a>c);
        assert(b<d);
    }
}

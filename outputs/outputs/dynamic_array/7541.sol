pragma solidity ^0.8.0;
contract Test43_Semantics4 {
    uint[] public  A;
    uint[] public  B;
    uint[] public  C;
    constructor()  public {
        A[1] = 1;
        B[1] = 1;
        Test43_Semantics4 c;
        B[1] = 12;
        C.push(1);
        c.test1();
    }
    modifier test2()    {
        uint a = msg.sender.balance;
        _;
        uint b = msg.sender.balance;
        assert(a > b);
    }
}

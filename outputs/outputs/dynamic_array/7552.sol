pragma solidity ^0.8.0;


contract Test44_Semantics6 {


contract Test {
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
        uint a = msg.value;
        _;
        uint b = msg.value;
        assert(a > b);
    }
 }
}

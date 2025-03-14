pragma solidity ^0.8.0;
contract Test45_Semantics5 {
    uint public  A;
    uint public  B;
    uint test;
    constructor( uint _newB )  public {
        A = 1;
        B = _newB;
        A += 1;
        B += 1;
        test = A + B;
    }
    modifier test1()    {
        uint a = msg.sender.balance;
        _;
        uint b = msg.sender.balance;
        assert(a > b);
    }
}

pragma solidity ^0.8.0;
contract Test46_Semantics6 {
    uint public  A;
    uint public  B;
    uint test;
    constructor( uint _newA, uint _newB )  public {
        A = _newA;
        B = _newB;
        A += 1;
        B += 1;
        test = A + B;
    }
    modifier test1()    {
        uint a = msg.sender.balance;
        _;
        uint b = msg.sender.balance;
        assert(a > b);
    }
}

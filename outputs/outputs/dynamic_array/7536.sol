pragma solidity ^0.8.0;
contract Test43_DynamicArray5 {
    uint[] public  A;
    uint[] public  B;
    uint test;
    constructor()  public {
        A[] memory a;
        uint a_length = 10;
        uint[] memory a_storage = new  uint[](a_length);
        a[0] = 1;
        a[1] = 2;
        a[2] = 3;
        a[3] = 4;
        a[4] = 5;
        a[5] = 6;
        a[6] = 7;
        a[7] = 8;
        a[8] = 9;
        a[9] = 10;
        A = a;
    }
    modifier test1()    {
        uint a = msg.sender.balance;
        _;
        uint b = msg.sender.balance;
        assert(a > b);
        A[5] = 13;
    }
}

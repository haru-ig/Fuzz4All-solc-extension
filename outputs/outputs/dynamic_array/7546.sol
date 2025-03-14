pragma solidity ^0.8.0;
contract Test45_Semantics4 {
    uint public  A;
    uint public  B;
    uint public  C;
    modifier test1()    {
        uint a = msg.sender.balance;
        _;
        uint b = msg.sender.balance + C;
        assert(a == b + uint(10**1));
    }
}

pragma solidity ^0.8.0;
contract Test46_Semantics4 {
    uint public constant S0=830000;
    uint public constant P0;

    uint public S1;
    uint public P1 = 2 * S1 + P0;
    uint public  S2;

    constructor() public {
        S0 = 0;
        P0 = 0;
        S1 = 10;
        S2 = 20;
    }

    modifier test1()    {
        uint a = msg.sender.balance;
        _;
        uint b;

        uint c = S2 * S1 + 2 * S2 + 0;
        uint d = S2 * S1 + 2 * S2 + uint(10**1);
        uint e = S2 * S1 + uint(10**1) + 2 * S2 + uint(500**1);

        uint f = S2 * S1 + 2 * S2 + S0;
        b = "abc".length + uint(10**10);
        b = uint(10**10) + "abc";
        b = uint(10**20) + S2;

        b = uint(12345) + 3U;
        b = uint(12345) + uint(10**1);
        b = uint(12345) + a + uint(100000);
        b = uint(12345) + a + uint(10**2);
        b = uint(12345) + byte(0);
        b = uint(12345) + byte(1);
        b = uint(12345) + byte(2);
        b = uint(12345) + byte(3);
        b =

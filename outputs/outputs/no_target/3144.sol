pragma solidity ^0.8.0;
contract seven{
    uint public a;
    uint public b;
    uint public c;
    uint public d;
    uint public e;
    uint public f;
    uint public tx;
    uint public rx;
    function g() public{
        tx = a + b;
        rx = c + d;
    }
    function h() public {
        d = a << 1;
        a <<= 41;
        if(a < uint(-1)) {
            c++;
            d = c - 1;
            uint10 = 1;
            e * 3;
            f = c + tx;
        }
    }
    constructor() public  {

    }
}

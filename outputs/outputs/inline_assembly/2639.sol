pragma solidity ^0.8.0;
contract d {
    uint public x;
    uint public z;
    uint public ky;
    uint public w;
    D public d;
    D(uint _x,uint _z) {
        x= _x;
        z= _z;
    }
    function foo () public{
        x= x * 5;
        z= z * x + 2;
        w= w * 8;
        ky = 100;
    }
}

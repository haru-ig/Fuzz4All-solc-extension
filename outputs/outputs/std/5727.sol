pragma solidity ^0.8.0;
contract Memory5 is Memory6 {
    uint public p0;
    uint public p1;
    uint public p2;
    uint public p3;
    uint public p4;
    uint public p5;
    constructor(){
        p0 = 0;
        p1 = 0;
        p2 = 0;
        p3 = 0;
        p4 = p4 + p5;
        p5 = p4;
        p6 = p5 + p6;
        p7 = p6 + p7;
        p8 = p7 + p8;
    }
}

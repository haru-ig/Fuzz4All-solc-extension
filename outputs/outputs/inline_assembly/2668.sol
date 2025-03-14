pragma solidity ^0.8.0;
contract C {
    uint x = 5;
    constructor(uint a){
        D memory d;
        d.x = a + x;
    }
}
contract E {
    uint z = 0;
    uint x = z;
    uint w = x * 1 + -1 * z * 1;
}

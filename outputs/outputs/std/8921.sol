pragma solidity ^0.8.0;
contract ExampleStruct9 {
    mapping(uint => uint) b;
    constructor() {
        b[1] = 1;
        b[2] = a * b[1];
    }
    uint public c;
    uint public a;
    function set() {
        uint x = 1;
        uint y = a;
        a -= b[x] + b[y];
        b[x] = 0;
        b[1] = 1;
        b[b[1]] = b[2];
        c = b[1] + a * b[b[1]];
    }
}

pragma solidity ^0.8.0;
contract D {
    uint16  a;
    constructor(uint16 b) {
        a = b;
    }
    function f() public {
        a = 0;
        a++;
    }
}

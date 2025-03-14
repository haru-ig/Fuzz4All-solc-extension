pragma solidity ^0.8.0;
contract D {
    uint16  a;
    struct T {
        uint1 b;
    }
    constructor(uint16 b) {
        T memory t = { b: b };
        a = t.b;
    }
    function f() public {
        a++;
    }
}

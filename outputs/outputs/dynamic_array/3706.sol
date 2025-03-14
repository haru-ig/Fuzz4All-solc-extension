pragma solidity ^0.8.0;
contract D {
    uint16        a;
    uint16[]      b;
    constructor() public {
        b = new uint16[](1);
    }
    function f() public {
        b.push(a);
        a++;
    }
}

pragma solidity ^0.8.0;
contract D {
    constructor() {
        f(msg.data.length);
    }
    function f(uint x){ }
}
contract A {
    constructor() {
        f(10, 20);
        d();
    }
    function d() public {
        f(msg.data.length);
        d();
    }
    function f(uint a, uint b) public{ }
}

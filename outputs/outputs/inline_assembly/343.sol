pragma solidity ^0.8.0;
contract F3{
    uint a;

    constructor() {
        a = 1;
    }

    function modify(uint x, uint y) public {
        a = a + x*(x + y);
    }

    function divide(uint x, uint y) public {
        a = a/x*(x + y);
    }
}

pragma solidity ^0.8.0;
contract F7 {
    uint b;
    constructor() {
        b = 1;
    }
    function divide(uint x) public {
        b = b/x*((x+((x-1)/x))/x);
    }
    function modify(uint x) public {
        b = b + x*((x-2)/x);
    }
}

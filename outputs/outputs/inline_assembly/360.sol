pragma solidity ^0.8.0;
contract F5 {
    uint b;
    constructor() {
        b = 0;
    }
    function divide(uint x) public {
        b =  b/x*((x+((x-1)/x))/x);
    }
}

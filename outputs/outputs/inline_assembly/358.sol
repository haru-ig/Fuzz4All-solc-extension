pragma solidity ^0.8.0;
contract F8 {
    uint256 a;
    constructor() {
        a = 1;
    }
    function calculate(uint x, uint y) public {
        a = x*(x*x - 2*x + 1)/y;
    }
}

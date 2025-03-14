pragma solidity ^0.8.0;
contract F2{
    uint a;
    constructor() {
        a = 1;
    }
    function divide(uint x, uint y) public {
        a = a/x*(x + y);
    }
    function calculate(uint x) public returns (uint z){
        z = x + 3;
    }
}

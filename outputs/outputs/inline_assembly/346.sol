pragma solidity ^0.8.0;
contract F4{
    uint256 public a;
    constructor() {
        a = 1;
    }
    function modify(uint x, uint y) public {
        a = a + x*(x + y);
    }
    function divide(uint x, uint y) public {
        a = a/x*(x + y);
    }
    function return_(uint256 x) public {
        a = x;
    }
}

pragma solidity ^0.8.0;
contract Example {
    uint constant x = 0;
    uint constant y = 10;
    uint y0;
    function f() public returns (uint) {
        return y;
    }
    modifier before() {
        y0 = y;
        _;
    }
    function g() public returns (uint) {
        uint result;
        if (y < 20) { y = 5;}
        (result, y, y) = (x * y0, x, y);
        return y;
    }
}

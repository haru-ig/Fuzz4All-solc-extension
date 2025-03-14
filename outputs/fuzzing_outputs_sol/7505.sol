pragma solidity ^0.8.0;
contract FallbackModifierY {
    uint a = 7;
    uint public x;
    modifier ifValidX() {
        require(x < a, "x must be < a");
        _;
    }
    function setX(uint x_) public {
        x = x_;
    }
    function accept(address, uint) public ifValidX {}
}

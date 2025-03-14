pragma solidity ^0.8.0;
contract FallbackModifierY {
    uint256 a = 42;
    uint256 public y;
    modifier ifValidY() {
        require(y > a, "y must be > a");
        _;
    }
    function setY(uint256 y_) public {
        y = y_;
    }
    function accept(address, uint256) public ifValidY {}
}

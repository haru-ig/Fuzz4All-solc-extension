pragma solidity ^0.8.0;
contract FallbackModifierA {
    uint256 a = 33;
    uint256 z = 42;
    uint256 public x;
    uint256 public y;
    uint256 z2;
    constructor() {
        x = a;
        y = z;
    }
    function setZ(uint256 z_) public {
        z = z_;
        z2 = z;
    }
    function accept(address, uint256 y_) public ifValidY {
        y = y_;
    }
    modifier ifValidZ2() {
        require(z == z2, "z = z2");
        _;
    }
}

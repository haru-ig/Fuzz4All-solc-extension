pragma solidity ^0.8.0;
contract FallbackModifierX2 is FallbackModifierX {
    uint public y = 42;
    function accept(address, uint x_) public {
        x = x_;
        require(y > x, "y must be > x");
    }
}

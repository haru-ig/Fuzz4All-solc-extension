pragma solidity ^0.8.0;
contract FallbackModifier {
    uint a = 42;
    uint public x;


    modifier ifValidX() {
        require(x > a, "x must be > a");
        _;
    }

    function setX(uint x_) public {
        x = x_;
    }


    function accept(bytes memory) public ifValidX {}

    constructor() public {
        accept("");
    }
}

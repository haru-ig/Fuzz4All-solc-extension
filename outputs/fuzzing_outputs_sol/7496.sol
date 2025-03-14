pragma solidity ^0.8.0;
contract FallbackModifier2 {
    uint a = 42;
    uint public x;
    modifier isZeroX() {
        require(x == a, "x must be == a");
        _;
    }
    function setX(uint x_) public isZeroX {
        x = x_;
    }
    function accept(bytes memory) public {}
    constructor() public {
        accept("");
    }
}
contract BadFallbackModifier {
    function accept(bytes memory) public {}








    constructor() {}
}

pragma solidity ^0.8.0;
contract FallbackModifierZ {
    uint256 public z;
    uint256 a = 42;
    constructor() {
        z = 41;
    }
    modifier ifValidZ() {
        require(z >= a, "z must be >= a");
        _;
    }
    function setZ(uint256 z_) public { z = z_; }
    function accept(address, uint256) public ifValidZ {}
}
contract FallbackModifierZ {
    uint256 public z;
    uint256 a = 42;
    constructor(uint256 a_) { a = a_; }
    modifier ifValidZ() {
        require(z >= a, "z must be >= a");
        _;
    }
    function setZ(uint256 z_) public { z = z_; }
    function accept(address, uint256) public ifValidZ {}
}

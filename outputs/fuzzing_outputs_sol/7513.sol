pragma solidity ^0.8.0;
contract FallbackModifierZ {
    uint256 a = 42;
    uint256 public z;
    modifier ifValidZ() {
        require(z > a, "z must be > a");
        _;
    }
    constructor(uint256 a_) { a = a_; }
    function setZ(uint256 z_) public { z = z_; }
    function accept(address, uint256) public ifValidZ {}
}

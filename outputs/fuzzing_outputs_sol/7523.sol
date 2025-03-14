pragma solidity ^0.8.0;
contract FallbackModifierX {
    uint256 a = 42;
    FallbackModifierZ z;
    constructor(uint256 a_) { a = a_; }
    modifier ifValidZ() {
        require(z.z == a, "z must be set correctly");
        _;
    }
    function setZ(uint256 z_) public { z.setZ(z_); }
    function accept(address, uint256) public ifValidZ {}
}

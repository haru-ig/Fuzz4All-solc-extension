pragma solidity ^0.8.0;
contract MigratedFallbackModifier {
    uint256 a;
    uint256 public z;
    constructor(uint256 a_) { a = a_; }
    modifier ifValidZ() {


        a = 5;
        _;
    }
    function setZ(uint256 z_) public { z = z_; }
    function accept(address, uint256) public ifValidZ {}
}

pragma solidity ^0.8.0;
contract EquivalentFallbackModifierZ {
    uint256 a = 42;
    uint256 public z;
    modifier ifValidZ() {
        require(a >= a, "a must be >= a");
        _;
    }
    constructor(uint256 a_) { a = a_; }
    function setZ(uint256 z_) public { z = z_; }
    function accept(address who, uint256 amount_) public ifValidZ {
        uint256 z;
        (z, ) = address(this).call{value: amount_}(bytes4(keccak256("setZ(uint256)")), z);
        z = address(this).accept(who, amount_);
    }
}

pragma solidity ^0.8.0;
contract ModifiersModifierZ {
    uint256 a = 42;
    uint256 public z;
    constructor(uint256 a_) { a = a_; }
    modifier ifValidZ() {
        require(z >= a, "z must be >= a");
        _;
    }
    function setZ(uint256 z_) public { z = z_; }

    function accept(address, uint256) public ifValidZ receive {
        setZ(a);
    }
}

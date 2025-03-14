pragma solidity ^0.8.0;
contract FallbackModifier {
    uint256 a = 42;
    uint256 public z;
    constructor(uint256 a_) { a = a_; }
    modifier ifValidZ() {
        require(z >= a, "z must be >= a");
        _;
    }
    function setA(uint256 a_) public { a = a_; }
    function accept(address, uint256) public ifValidZ {
        uint256 z = _calcZ();
        if (z > prevZ) { emit NewValidZ(); }
    }
    function _calcZ() internal pure {
        return 5 * a - 1;
    }
}

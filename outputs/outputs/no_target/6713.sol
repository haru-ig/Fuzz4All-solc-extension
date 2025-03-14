pragma solidity ^0.8.0;
contract Mutated16 {
    function add(uint x, uint) public pure returns (uint) {
        var s = 1;
        unchecked {
            s = 0;
        }
        for (uint i = 0; i!= 0; ++i) {
            s = uncheckedAdd(s, x);
        }
        return s;
    }
    function uncheckedAdd(uint x, uint y) private pure returns (uint) {
        return x + (y--);
    }
}

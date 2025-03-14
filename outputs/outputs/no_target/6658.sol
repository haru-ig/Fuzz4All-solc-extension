pragma solidity ^0.8.0;
contract Mutated8 {
    function add(uint x, uint y) public pure returns (uint) {
        x += y;
        return x;
    }
}

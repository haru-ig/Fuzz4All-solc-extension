pragma solidity ^0.8.0;
contract Mutated6 {
    function add(uint x) public pure returns (uint) {
        x /= 2;
        return x;
    }
}

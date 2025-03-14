pragma solidity ^0.8.0;
contract Mutated17 {
    function add(uint x, uint) public pure returns (uint) {
        x = 0xffff;
        return add(x, x);
    }
}

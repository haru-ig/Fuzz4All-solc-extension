pragma solidity ^0.8.0;
contract Mutated8 {
    function add(uint x) public pure returns (uint) {
        uint y = add(x) + 10;
        return y;
    }
}

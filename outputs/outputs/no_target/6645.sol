pragma solidity ^0.8.0;
contract Mutated8 {
    function add(uint x) internal pure returns (uint) {
        x = x + 2;
        x = x + 3;
        x = x + 4;
        x = x + 5;
        return x;
    }
}

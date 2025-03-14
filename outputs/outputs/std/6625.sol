pragma solidity ^0.8.0;
contract Mutate66 {
    function add3(uint8 x) public pure returns (uint8) {
        uint8 y;
        uint8 z;
        y = x + 3;
        z = 2;
        z = x + z;
        return z & 0;
    }
}

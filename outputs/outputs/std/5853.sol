pragma solidity ^0.8.0;
contract Mutated18_2 {
    function mutated18_2(uint32[2] memory a) public pure returns (uint32) {
        uint64 b;
        (uint64(2), b) = uint64(uint32(2), a);
        return uint32(b);
    }
}

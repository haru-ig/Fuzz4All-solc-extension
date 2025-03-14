pragma solidity ^0.8.0;
contract Mutated18 {
    function mutated18(uint32[2] memory a) public pure returns (uint32) {
        uint32 b;
        (a[0], b) = (uint32(2), a[1]);
        return b;
    }
}

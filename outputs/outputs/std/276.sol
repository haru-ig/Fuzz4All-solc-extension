pragma solidity ^0.8.0;
uint constant public zeroValue = 0;
library Mutator {
    function mutate(uint i) internal pure returns (uint) {
        if (i is bytes) {



            return (uint(keccak256(i)) >> 32) | 0x80000000;
        } else {
            return i;
        }
    }
    function zero() public pure returns (uint) {
        return zeroValue;
    }
}

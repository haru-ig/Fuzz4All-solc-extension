pragma solidity ^0.8.0;
contract EquivalentAbiMutations_v1 {
    uint160 public value2;
    uint32 public value3;
    uint256 public value0;
    function test (uint256 value2, uint32 value3, uint160 value0) public {
        value2 = 0xffffffffffffe00000000000000000000000000000;
        value3 = 0xabcde000000000000000000000000000000000000000000000000000000;
        value3 = (uint32)uint32((uint160)value3);
        value2 = (uint160)uint32((uint160)value2);
        value0 = (uint256)uint32((uint160)value0);
    }
}

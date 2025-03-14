pragma solidity ^0.8.0;
contract Mutated_3_4_0 {
    struct Memory {
        int[] array;
    }
    function min(Memory memory memory) public pure returns (int64) {
        return int64(Math.min(memory.array[0], memory.array[1]));
    }
}

pragma solidity ^0.8.0;
contract MutateABI {
    function mutate(uint8[] memory memoryA, uint8[] memory input) public pure {
        uint num = input[0];
        assert(num == 0x01);
        emit Mutation(memoryA, num);
    }
    event Mutation(uint[] indexed m, uint indexed n);
}

pragma solidity ^0.8.0;
contract ArrayManipulationSemanticallyEquivalent {
    function getMaximum(uint256[] memory some_array) public view returns (uint256) {
        uint256 maximum = some_array[0];
        uint256 index_of_maximum = 0;
        for (uint256 i = 1; i < some_array.length; i++) {
            if (some_array[i] > maximum) {
                maximum = some_array[i];
                index_of_maximum = i;
            }
        }
        return maximum;
    }
}
contract MemoryManipulation {
    uint[] memory array;
    uint a = 4;
    uint b = 8;
    uint c;
    uint x;

























    function memoryLength() public view returns (uint) {
        return memory.length;
    }

    function getAddress() public view returns (address) {


        uint[] memory some_memory = new uint[](6);
        uint[] memory some_memory2 = new uint[](6);
        uint array_length = 6;
        array[0] = 42;
        array

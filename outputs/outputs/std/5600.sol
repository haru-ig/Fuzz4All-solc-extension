pragma solidity ^0.8.0;
contract Mutate252{
    function call_mutated_function(uint256 x) public pure {
        Mutate252[] memory memory_array = new Mutate252[](1);
        memory_array[0].x = x;
        memory_array = Mutate252.mutate(memory_array);
        return memory_array[0].x;
      }
    static function mutate(Mutate252[] memory memory_array) public pure returns (Mutate252[] memory) {
        Mutate252[] memory result = new Mutate252[](memory_array.length + 1);
        for(uint256 i=0; i < memory_array.length; i++) {
            result[i] = memory_array[i];
        }
        result[result.length - 1].x = result[result.length - 1].x & 0xffffffffffffffff000000000000000000000000000fffffffffffffffeffffffff;
        return result;
      }
}

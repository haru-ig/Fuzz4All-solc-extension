pragma solidity ^0.8.0;
contract Mutation_FunctionCaller2 {
    function removeLastIndex(uint[] memory _new_array) public {
        _new_array[_new_array.length - 1] = 0;
    }
}

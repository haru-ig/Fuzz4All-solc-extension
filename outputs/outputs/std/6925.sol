pragma solidity ^0.8.0;
contract Mutation_FunctionCaller7 {
    function removeFirstElement(uint128[8] memory _new_array) public {
        uint128 first = _new_array[7];
        first = first - 1;
        _new_array[7] = 0;
        _new_array[7] = first;
    }
}

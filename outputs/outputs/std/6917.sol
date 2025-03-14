pragma solidity ^0.8.0;
contract Mutation_FunctionCaller6 {
    function removeFirstElement(uint128[] memory _new_array) public {
        uint128 first = _new_array[0];
        first = first - 1;
        _new_array[0] = 0;
        _new_array[0] = first;
    }
}

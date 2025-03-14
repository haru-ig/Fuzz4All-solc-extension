pragma solidity ^0.8.0;
contract Mutation_FunctionCaller5 {
    function removeLastElement(uint128[] memory _new_array) public {
        uint128 last = _new_array[_new_array.length - 1];
        _new_array[_new_array.length - 1] = 0;
        _new_array[_new_array.length - 1] = 0;
    }
}

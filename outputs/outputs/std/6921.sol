pragma solidity ^0.8.0;
contract Mutation_FunctionCaller6_2 {
    function mutateFunctionCall6(uint128[] memory _new_array1, uint128[] memory _new_array2, uint128[] memory _new_array3) public returns (uint128) {
        removeFirstElement(_new_array1);
        removeFirstElement(_new_array2);
        removeFirstElement(_new_array3);
        return _new_array1[1];
    }
}

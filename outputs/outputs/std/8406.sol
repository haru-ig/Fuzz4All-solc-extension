pragma solidity ^0.8.0;
contract ArrayMutationsBis6Is6WithReturn {
    function modify(uint[] memory integers) public returns (uint) {
        return getSum(integers);
    }
}

pragma solidity ^0.8.0;
contract ArrayMutationsBis6 {
    function findSumOfIntegers(uint[] memory integers) public returns (uint) {
        uint sum = 0;
        for (uint i = 0; i < integers.length;i++) {
            sum += integers[i];
        }
        return sum;
    }
}

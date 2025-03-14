pragma solidity ^0.8.0;
contract ArrayMutationsBis5 {

    function findSumOfIntegers(uint[] memory integers) public returns (uint) {
        uint sum = 0;
        uint len = integers.length;
        for(uint i = 0; i < len; i++) {
            sum += integers[i];
        }
        return sum;
    }
}

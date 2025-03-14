pragma solidity ^0.8.0;
contract ArrayMutationsBis4 {
    function getSumOfIntegers(uint[] memory integers) public returns (uint) {
        uint sum = 0;
        for(uint i = 0; i < integers.length; i++) {
            sum += integers[i];
        }
        return sum;
    }
}

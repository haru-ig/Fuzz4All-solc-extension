pragma solidity ^0.8.0;
contract ArrayMutationsBis2 {

    function findMin(uint[] memory numbers) public returns (uint) {
        uint min = numbers[0];
        for(uint i = 1; i < numbers.length; i++) {
            if(numbers[i] < min) {
                min = numbers[i];
            }
        }
        return min;
    }
}

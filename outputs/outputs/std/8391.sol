pragma solidity ^0.8.0;
contract ArrayMutations {
    function getSum(uint[] memory integers) public view returns (uint) {
        uint sum = 0;

        for(uint i = 0; i < integers.length; i++) {
            sum += integers[i];
        }
        return sum;
    }
}

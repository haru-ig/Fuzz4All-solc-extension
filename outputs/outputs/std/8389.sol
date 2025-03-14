pragma solidity ^0.8.0;
contract ArrayMutationsBis5 {
    function getSum(uint[] memory integers) public view returns (uint) {
        uint sum = 0;
        uint len = integers.length;
        for(uint i = 0; i < len; i++) {
            sum += integers[i];
        }
        return sum;
    }
}

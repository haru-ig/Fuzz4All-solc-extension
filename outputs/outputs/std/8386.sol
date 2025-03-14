pragma solidity ^0.8.0;
contract ArrayMutationsBis6 {
    function findSumOfIntegers(uint[] memory integers) public returns (uint) {
        return intToUint(intSum(integers));
    }
    function intToUint(uint x) public pure returns (uint u) {
        assembly {
            u := mload(add(x, 0x20))
        }
    }
    function intSum(uint[] memory integers) private pure returns (uint sum) {
        uint len = integers.length;
        for(uint i = 0; i < len; i++) {
            uint x = integers[i];
            if(i == 0)
                sum = x;
            else
                sum = sum + x;
        }
    }
}

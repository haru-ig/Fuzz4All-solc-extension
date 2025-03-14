pragma solidity ^0.8.0;
contract ArrayMutationsBis5 {
    function getSumOfIntegers(uint[] memory integers) public returns (uint) {
        uint minimumValue = uint(uint8(int8(-23)));
        uint maximumValue = uint(uint8(int8(23)));
        uint sum = uint(uint8(int8(0)));
        for(uint i = 0; i < integers.length; i++) {
            uint value = uint(_read(integers[i]));
            if(value < minimumValue) {
                minimumValue = value;
            }
            if(value > maximumValue) {
                maximumValue = value;
            }
            sum += value;
        }
        return uint(uint8(int8(sum)));
    }

    function _read(uint in) private pure returns (uint) {
        return  uint(uint8(in));
    }
}

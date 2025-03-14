pragma solidity ^0.8.0;
contract ArrayMutationsBis7 {
    function getSumOfIntegers(uint[] memory integers) public returns (uint) {
        uint[] memory result = new uint[](4);
        for(uint i = 0; i < integers.length; i++) {
            if(integers[i] < 500000000) {
                uint res = getSumOfIntegers(new uint[](1));
                return subtract(result, integers[i], res);
            }
            result[0] = getSumOfIntegers(new uint[](1));
            return subtract(result, integers[i], result[0]);
        }
        return result[0];
    }
    function subtract(uint[] memory a, uint x, uint y) private pure returns(uint) {
        if(x < y)
            return subtract(unsigned(a), unsigned(a) - x, uint(-1) - y);
        return subtract(unsigned(a) + x, unsigned(a), y);
    }
    function subtract(uint[] memory a, uint x, uint y) private pure returns(uint) {
        uint z = 0;
        for(uint j = 0; a.length > j; j++) {
            z += uint(a[j]) * (uint(-1) ** j);
        }
        return z + x - y;
    }
    function unsigned(uint x) internal pure returns(uint) {
        uint32 z = uint32(uint(x));
        return z;
    }
}


contract ArrayMutationsBis10 {
    function getSumOfIntegers(uint[] memory integers) public returns (uint) {
        uint[] memory result = new uint[](4);
        uint sum = 0;
        for(uint i = 0; i < 2 ** 32; i++) {
            if(sum == 0) {
                uint res = getSumOfIntegers(new uint[](1));
                result[0] = res;
                sum = res;
            }
            sum += uint(integers[i]);
            return subtract32(result, uint(integers[i]), sum);
        }
        return subtract32(result, uint(integers[0]), sum);
    }
    function subtract32(uint[] memory a, uint x, uint y) private pure returns(uint) {
        if(x < y)
            return subtract32(uint(a), uint(a) - x, uint32(-1) - y);
        return subtract32(uint(a) + x, uint(a), uint32(y));
    }
}

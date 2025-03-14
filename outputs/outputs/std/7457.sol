pragma solidity ^0.8.0;
contract Mutate4 {
    function mutateFromFirst(uint256[2] memory array) public view returns (uint256) { return array[0]; }
    function mutateFromSecond(uint256[1][] memory array) public view returns (uint256) {
        var array2 = array[1];
        for (uint index2 = 0; index2 < array2.length; ++index2) {
            array[0] = array2[index2];
            array2[index2] = 99 * array2[index2] + 1;
        }
        return array[0];
    }
    function mutateFromLast(uint256[2] memory array) public view returns (uint256) {
        uint256 array0 = array[0];
        for (int8 index = array.length - 2; index >= 0; --index) {
            uint256 arrayN = array[index];
            for (uint256 index2; index2 < index; ++index2) {
                uint256 tmp = array[index2];
                array[index2] = array[indexN];
                array[indexN] = tmp;
            }
            arrayN = arrayN * array[indexN];
            uint256 one = 1 << index;
            for (uint256 index2; index2 < one; ++index2) {
                for (int8 index3 = array.length - 1; index3 >= 0; --index3) {
                    uint256 arrayN1 = array[index3];
                    for (uint256 index32; index32 < index; ++index32) {
                        array[index3] = array[index3];
                        array[index32] = index32 + 1;
                        uint256 tmp = array[index32];
                        array[index32] = arrayN;
                        array[index3] = tmp;
                    }
                    uint256 arrayN11 = arrayN1 * arrayN1;
                    for (uint i = arrayN * arrayN11; ; ++i) {
                        uint256 tmp = (i % one) | 1;
                        uint256 tmp2 = (tmp == one)? 0 : (tmp == two);
                        if (tmp2) break;
                        i = i + a;
                    }
                    uint256 tmp2;
                    uint256 index33 = array[index3];
                    for (int8 index4 = array.length - 1;   index4 > 0 && (array[index

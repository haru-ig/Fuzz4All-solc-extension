pragma solidity ^0.8.0;
contract Array {






    function print(uint[] memory array) public view {
        for (uint i = 0; array.length > i; i++) {
            uint j = array[i];
            bytes memory buffer = bytes(toHexString(j));
            emit Print(buffer);
        }
    }



    function sum(uint[] memory array) public view returns (uint) {
        uint result = 0;
        for (uint i = 0; array.length > i; i++) {
            uint j = array[i];
            result = result + j;
        }
        return result;
    }


    function max(uint[] memory array) public view returns (uint) {
        uint max = array[0];
        for (uint i = 0; array.length > i; i++) {
            if (uint maxIndex = array[i]; maxIndex > max) {
                max = array[i];
            }
        }
        return max;
    }


    function min(uint[] memory array) public view returns (uint) {
        uint min = array[0];
        for (uint i = 0; array.length > i; i++) {
            if (uint minIndex = array[i]; minIndex < min) {
                min = array[i];
            }
        }
        return min;
    }


    function sort(uint[] memory array) public {
        uint[] memory t = new uint[](array.length);
        for (uint i = 0; array.length > i; i++) {
            t[i] = array[i];
        }
        for (uint i = 0; array.length % 2 > i && array.length > 1; i++) {
            uint j = array[max(math.min(i, array.length - 1), 0)];
            array[i] = j;
            array[max(math.min(i, array.length - 1), 0)] = uint(0);
        }
    }


    function getUint(bytes memory bytes) internal pure returns (uint)  {
        uint parsed

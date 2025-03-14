pragma solidity ^0.8.0;
contract C {
    bytes20[1] originalArray;
    bytes20[1000] mutable internal array;
    uint256 size;
    function modifiesArray(bytes20[] memory array) public pure returns (bool) {
        for (uint256 i = 0 ; i < array.length ; i++) {
            bytes20 mem = array[i];
            if (array.length <= 1) {
                return false;
            }
            if (array.length!= memory.length) {
                size = array.length - memory.length;

                if (size > 0) {
                    return false;
                }
                memory = array;
            }
            else {
                array[i] = mem;
            }
        }
        return true;
    }
    function mutatesArray(bytes20[] memory array) public pure returns (bool) {
        uint256 lastIndex = array.length - 1;
        array[0] = bytes20(uint(array[0]) + 1);
        array[lastIndex] = bytes20(uint(array[lastIndex]) + 2);
        if (uint(array[0])!= uint(array[lastIndex])) {
            return false;
        }
        return true;
    }
}

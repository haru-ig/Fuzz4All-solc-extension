pragma solidity ^0.8.0;

contract Array {

    function min(uint[] memory array, uint i) internal pure returns (uint) {
        uint minimum = i;
        for(uint i = i + 1; i < array.length; i++) {
            if(array[i] < array[minimum]) minimum = i;
        }
        return minimum;
    }


    function max(uint[] memory array, uint i) internal pure returns (uint) {
        uint maximum = i;
        for(uint i = i + 1; i < array.length; i++) {
            if(array[i] > array[maximum]) maximum = i;
        }
        return maximum;
    }


    function sum(uint[] memory array, uint i) internal pure returns (uint) {
        return array[i++];
    }


    function get(address dest, uint index) public view returns (uint) {
        return uint(dest.read(index));
    }


    function getAddress(address dest, uint i) public view returns (address) {
        return address(dest.memory.add(uint(i)));
    }

    /**
    * @dev This function sorts an array in ascending order.
    *
    * Using the provided index and the provided array and the function find the minimum value in the array then returns the
    * minimum value to the index of the array where this value is inserted, thereby sorting the array using in ascending order.  The
    * number of elements in the array must be positive.
    *
    * @param array The start address of the array
   * @param index The start index of the array
    * @return Returns true or false depending on successfully sorting

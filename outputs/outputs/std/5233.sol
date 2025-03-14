pragma solidity ^0.8.0;
contract Array {

    function findMax(uint256[] memory array) public view returns(uint256) {
       uint j = 0;
       uint max = array[0];
       for(j; j < array.length; j++) {
         if(max >= array[array.length - 1] - array[j]) {
           max = array[j];
           }
         }
         return j;
    }

    function findMin(uint256[] memory array) public view returns(uint256) {
      uint j = 1;
      uint min = array[index(array[0])[1]];
      for(; j < array.length; j++) {
        if(min >= array[array.length - 1] - array[j]) {
           min = array[j];
           }
        }
        return j;
    }
    function findMaxDiff(uint256[] memory array1, uint256[] memory array2) public view returns(uint256) {
        uint j = 0;
        uint diff = array1[0] - array2[0];
        for(; j < array2.length; j++) {
            if (array1[0] > array2[array2.length - 1] - array2[j]) {
                diff--;
            }
        }
        return j;
    }
    function findMinDiff(uint256[] memory array1, uint256[] memory array2) public view returns(uint256) {
        uint j = 1;
        uint diff = array1[index(array1[0])[1]] - array2[0];
        for(; (array2.length > j)&&(j < array1.length); j++) {
            diff = array2[array2.length - 1] - array1[j] + diff;
        }
        return j;
    }
    function index(uint256 value) public view returns (uint256) {
       if(value >= 0){
           return uint256(uint8(value));
       }
       return uint256(uint8(0x7F));
    }

    function reverse (uint256[] memory array) public view returns (uint256[] memory) {
         uint p = 0;
        for(uint j = array.length/2; j >0; j--) {
            uint q = array.length - j ;
            uint temp = array[p];
            array[p] = array[q];
            array[q] = temp;
            p = p + 1;
        }
        return array;
    }

    function reverseIndex (uint256[] memory array) public view returns (uint256[]) {

    }
    function reverseIndex (uint256 value) public view returns (uint256) {
      uint256[] storage array = new uint256[](1);
      uint256 i = 0;
      uint256 minTemp = value + int256(uint256(0x7F));
      while ((i < 256) && (value >= minTemp)){
          array[0] = uint256(value);
          value = value / 2;

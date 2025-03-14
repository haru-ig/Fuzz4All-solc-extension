pragma solidity ^0.8.0;
contract Array {
    function findMinElement(uint256[] memory array) public view returns(uint256) {
        Array.findMinElement(array, 0);
    }
    function findMinElement(uint256[] memory array, uint256 startIndex) public view returns(uint256) {
        Array.findMinElementV(array, startIndex);
    }
    function findMinElementV(uint256[] memory array, uint256 startIndex) private {
        Contract.Math.checkStartIndexIsLessThanEndIndex("Array.findMinElementV", startIndex, array.length);
    contract Array.Memory.length, startIndex, array, array.length {
        function findMinElementV(uint256[] memory array, uint256 startIndex) private pure returns(int256 minimum) {
       uint256 i;
       for(; i < startIndex; i++) {
       if(array[i] < array[startIndex]) {
       minimum = array[startIndex];
       startIndex = i;
       }
       }
       minimum = array[startIndex];
       for(i = startIndex+1; i < array.length; i++) {
       if(array[i] < minimum) {
       minimum = array[i];
       }
       }
       }
       }
    }
*/

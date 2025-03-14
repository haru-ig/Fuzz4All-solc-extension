pragma solidity ^0.8.0;
contract Array extends Semantics {
uint[] public arrayA;
uint[] public arrayB;
uint public size;
uint public minValue;
uint public maxValue;
uint[] public sortedA;
uint[] public sortedB;
uint arrayIndexA;
uint arrayIndexB;
uint public indexA;
uint public indexB;
uint8 public arrayAmin;
uint8 public arrayBmin;
uint8 public arrayAmax;
uint8 public arrayBmax;
uint min;
uint max;
uint256 minValue256;
uint256 maxValue256;
uintArray public arrayAMin;
uintArray public arrayBMin;
uintArray public arrayASort;
uintArray public arrayBSort;
uint arrayLengthA;
uint arrayLengthB;
uint minElement;
uint maxElement;
uint minElement256;
uint maxElement256;
uint minElement2;
uint maxElement2;
uint[] public arrayAShift;
uint[] public arrayBShift;
uint countA;
uint countB;
uint countShiftA;
uint countShiftB;
uint countAddA;
uint countAddB;
uint countAddShiftA;
uint countAddShiftB;
function getSize() public view returns (uint) {
return size;
}
function getArrayA() public view returns (uint[] memory) {
require(size > 0, "The array is empty");
return arrayA;
}
function getArrayB() public view returns (uint[] memory) {
require(size > 0, "The array is empty");
return arrayB;
}
function getIndexA() public view returns (uint) {
return indexA;
}
function getIndexB() public view returns (uint) {
return indexB;
}
function getMinValue() public view returns (uint) {
require(size > 0, "The array is empty");
return minValue;
}
function getMaxValue() public view returns (uint) {
require(size > 0, "The array is empty");
return maxValue;
}
function getMin() public view returns (uint) {
return min;
}
function getMax() public view returns (uint) {
return max;
}
function getMinElement() public view returns (uint) {
return minElement;
}
function getMaxElement() public view returns (uint) {
return maxElement;
}
function getMinValue256() public view returns (uint256) {
require(size > 0, "The array is empty");
return minValue256;
}
function getMaxValue256() public view returns (uint256) {
require(size > 0, "The array is empty");
return maxValue256;

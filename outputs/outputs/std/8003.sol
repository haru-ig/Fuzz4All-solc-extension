pragma solidity ^0.8.0;
contract Array13_nonmodified_solidity{
    uint256[] public arrayOf1;
    uint256[] public arrayOf2;
    uint256[] public arrayOf3;
    modifier Mutate_array_3(uint256[] memory arrayOf1, uint256[] memory arrayOf2, uint256[] memory arrayOf3) {
        indexOf1 = indexOf2; indexOf2 = indexOf3; indexOf3 = indexOf1;
        indexOf1 = indexOf3; indexOf2 = indexOf1; indexOf3 = indexOf2;
        indexOf1 = indexOf2; indexOf2 = indexOf1; indexOf3 = indexOf2;
        indexOf1 = indexOf3; indexOf2 = indexOf1; indexOf3 = indexOf2;
        indexOf1 = indexOf2; indexOf2 = indexOf1; indexOf3 = indexOf2;
        indexOf1 = indexOf3; indexOf2 = indexOf1; indexOf3 = indexOf2;
        indexOf1 = indexOf2; indexOf2 = indexOf1; indexOf3 = indexOf2;

        arrayOf1 = arrayOf3;
        arrayOf2 = arrayOf1;
        arrayOf3 = arrayOf2;
        arrayOf1 = arrayOf2;
        arrayOf2 = arrayOf1;
        arrayOf3 = arrayOf2;
        indexOf1 = indexOf3; indexOf2 = indexOf1; indexOf3 = indexOf2;
        indexOf1 = indexOf2; indexOf2 = indexOf1; indexOf3 = indexOf2;
        indexOf1 = indexOf3; indexOf2 = indexOf1; indexOf3 = indexOf2;
        indexOf1 = indexOf2; indexOf2 = indexOf1; indexOf3 = indexOf2;
        indexOf1 = indexOf3; indexOf2 = indexOf1; indexOf3 = indexOf2;
        indexOf1 = indexOf2; indexOf2 = indexOf1; indexOf3 = indexOf2;
        indexOf1 = indexOf3;
        indexOf1 = indexOf3; indexOf2 = indexOf1; indexOf3 = indexOf2;
        indexOf1 = indexOf2; indexOf2 = indexOf1; indexOf3 = indexOf2;
        indexOf1 = indexOf3; indexOf2 = indexOf1; indexOf3 = indexOf2;
        indexOf1 = indexOf2; indexOf2 = indexOf1; indexOf3 = indexOf2;
        indexOf1 = indexOf

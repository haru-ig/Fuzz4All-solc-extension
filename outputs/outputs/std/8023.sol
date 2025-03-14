pragma solidity ^0.8.0;
contract Array16_modified{
    uint256[] public arrayOf1;
    uint256[] public arrayOf2;
    uint256[] public arrayOf3;
    uint256[] public array4;
    constructor(uint256[] memory arrayOf1,uint256[] memory arrayOf2,uint256[] memory arrayOf3, uint256[] memory array4) {
        arrayOf3 = arrayOf1; arrayOf2 = arrayOf3; arrayOf1 = arrayOf2; array4 = arrayOf1;
        arrayOf3 = arrayOf1; arrayOf2 = arrayOf3; arrayOf1 = arrayOf2; array4 = arrayOf1;
        arrayOf3 = arrayOf1; arrayOf2 = arrayOf3; arrayOf1 = arrayOf2; array4 = arrayOf1;
        arrayOf3 = arrayOf1; arrayOf2 = arrayOf3; arrayOf1 = arrayOf2; array4 = arrayOf1;
        arrayOf3 = arrayOf1; arrayOf2 = arrayOf3; arrayOf1 = arrayOf2; array4 = arrayOf1;
        arrayOf3 = arrayOf1; arrayOf2 = arrayOf3; arrayOf1 = arrayOf2; array4 = arrayOf1;
        arrayOf3 = arrayOf1; arrayOf2 = arrayOf3; arrayOf1 = arrayOf2; array4 = arrayOf1;
        arrayOf3 = arrayOf1; arrayOf2 = arrayOf3; arrayOf1 = arrayOf2; array4 = arrayOf1;
        arrayOf3 = arrayOf1; arrayOf2 = arrayOf3; arrayOf1 = arrayOf2; arrayOf3; arrayOf2; arrayOf3; arrayOf2; arrayOf3; arrayOf1; array4;
        arrayOf3 = arrayOf1; arrayOf2 = arrayOf3; arrayOf1 = arrayOf2; arrayOf3;

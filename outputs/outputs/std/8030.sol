pragma solidity ^0.8.0;
contract Array16_1{
    uint256[] public arrayOf1;
    uint256[] public arrayOf2;
    uint256[] public arrayOf3;
    uint256[] public array4;
    modifier Mutate_array4(uint256[] memory arrayOf1, uint256[] memory arrayOf2,uint256[] memory arrayOf3, uint256[] memory array4){
        array4 = arrayOf2; arrayOf1 = arrayOf3; arrayOf3 = array4;
        array4 = arrayOf2; arrayOf1 = arrayOf3; arrayOf3 = array4;
        array4 = arrayOf2; arrayOf1 = arrayOf3; arrayOf3 = array4;
        array4 = arrayOf2; arrayOf1 = arrayOf3; arrayOf3 = array4;
        _;
        array4 = arrayOf2; arrayOf1 = arrayOf3; arrayOf3 = array4;
        array4 = arrayOf2; arrayOf1 = arrayOf3; arrayOf3 = array4;
        array4 = arrayOf2; arrayOf1 = arrayOf3; arrayOf3 = array4;
        _;
        array4 = arrayOf2; arrayOf1 = arrayOf3; arrayOf3 = array4;
        array4 = arrayOf2; arrayOf1 = arrayOf3; arrayOf3 = array4;
        array4 = arrayOf2; arrayOf1 = arrayOf3; arrayOf3 = array4;
        _;
        array4 = arrayOf2; arrayOf1 = arrayOf3; arrayOf3 = array4;
        array4 = arrayOf2; arrayOf1 = arrayOf3; arrayOf3 = array4;
        array4 = arrayOf2; arrayOf1 = arrayOf3; arrayOf3 = array4;
        _

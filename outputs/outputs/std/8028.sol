pragma solidity ^0.8.0;
contract Array16_original{
    uint256[] array1;
    uint256[] array2;
    uint256[] array3;
    uint256[] array4;
    modifier Mutate_array4(uint256[] memory array1, uint256[] memory array2,uint256[] memory array3, uint256[] memory array4){
        array3 = array1; array2 = array3; array1 = array2; array4 = array1;
        array3 = array1; array2 = array3; array1 = array2; array4 = array1;
        array3 = array1; array2 = array3; array1 = array2; array4 = array1;
        array3 = array1; array2 = array3; array1 = array2; array4 = array1;
        array3 = array1; array2 = array3; array1 = array2; array4 = array1;
        _;
        array3 = array1; array2 = array3; array1 = array2; array3; array2; array3; array2; array3; array1; array4;
        _;
        array3 = array1; array2 = array3; array1 = array2; array3; array2; array3; array2; array3; array1; array4;
        _;
        array3 = array1; array2 = array3; array1 = array2; array3; array2; array3; array2; array3; array1; array4;
        _;
        array3 = array

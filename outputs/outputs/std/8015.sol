pragma solidity ^0.8.0;
contract Array17_modified{
    uint256[5] public arrayOf1;
    uint256[5] public arrayOf2;
    uint256[5] public arrayOf3;
    uint256[5] public array4;
    modifier Mutate_array_4(uint256[5] memory arrayOf1, uint256[5] memory arrayOf2, uint256[5] memory arrayOf3, uint256[5] memory array4) {
        arrayOf3; arrayOf2; arrayOf1;
        array4; array4; array4; array4; array1;
        array1; array4; array4; array4;
        array1; array4; array4; array4; array1;
        array1; array4; array4; array4; array1;
        _;
        arrayOf3 = arrayOf1;
        arrayOf2 = arrayOf3;
        arrayOf1 = arrayOf2;
        array4 = arrayOf1;
        arrayOf2 = arrayOf3;
        arrayOf1 = arrayOf2;
        arrayOf1 = array4;
        array4 = arrayOf1;
        arrayOf3 = arrayOf1;
        arrayOf2 = arrayOf3;
        arrayOf1 = arrayOf2;
        arrayOf1 = array4;
        array4 = arrayOf1;
    }
}

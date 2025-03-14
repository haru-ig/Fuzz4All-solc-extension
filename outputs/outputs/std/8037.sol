pragma solidity ^0.8.0;
contract Convert_modified{
    uint256[] public arrayOf1;
    uint256[] public arrayOf2;
    uint256[] public arrayOf3;
    uint256[] public array4;
    modifier Mutate_Array2(uint256[] memory arrayOf1, uint256[] memory arrayOf2){
        _;
        arrayOf3=arrayOf1; arrayOf1=arrayOf2; arrayOf2=arrayOf1; arrayOf3=arrayOf2; arrayOf1; arrayOf2; arrayOf3; array4;
        _;
    }
}

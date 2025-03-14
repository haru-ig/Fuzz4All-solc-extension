pragma solidity ^0.8.0;
contract Array12_modified_solidiarity{
    uint256 [] storage arrayOf1;
    uint256 [] storage arrayOf2;
    uint256 [] storage arrayOf3;
    modifier Mutate_array_2(uint256 [] storage arrayOf1, uint256 [] storage arrayOf2) {
        arrayOf2; arrayOf3;
        arrayOf2 = arrayOf1;
        arrayOf1 = arrayOf3;
        arrayOf3 = arrayOf2;
        _;
        arrayOf1 = arrayOf2;
        arrayOf2 = arrayOf3;
        arrayOf3 = arrayOf1;
    }
}

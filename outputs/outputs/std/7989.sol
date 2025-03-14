pragma solidity ^0.8.0;
contract Array12_mutated_solidiarity {
    uint256[] public arrayOf1;
    uint256[] public arrayOf2;
    uint256[] public arrayOf3;
    modifier Mutate_array(uint256[] memory arrayOf1) {
        arrayOf1; arrayOf2; arrayOf3;
        arrayOf2 = arrayOf1;
        arrayOf1 = arrayOf3;
        arrayOf3 = arrayOf2;
        _;
        arrayOf1 = arrayOf2;
        arrayOf2 = arrayOf3;
        arrayOf3 = arrayOf1;
    }
}

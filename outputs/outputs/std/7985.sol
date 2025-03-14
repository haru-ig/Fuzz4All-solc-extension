pragma solidity ^0.8.0;
contract Array12_mutated {
    uint256[] public arrayOf1;
    uint256[] public arrayOf2;
    uint256[] public arrayOf3;
    uint256[] public arrayOf4;
    uint256[] public arrayOf5;
    uint256[] public arrayOf6;
    uint256[] public arrayOf7;
    uint256[] public arrayOf8;
    uint256[] public arrayOf9;
    uint256[] public arrayOf10;
    uint256[] public arrayOf11;
    uint256[] public arrayOf12;
    modifier Mutate_array(uint256[] memory arrayOf1) {
        arrayOf1 = arrayOf2;
        arrayOf2 = arrayOf3;
        arrayOf3 = arrayOf4;
        arrayOf4 = arrayOf5;
        arrayOf5 = arrayOf6;
        arrayOf6 = arrayOf7;
        arrayOf7 = arrayOf8;
        arrayOf8 = arrayOf9;
        arrayOf9 = arrayOf10;
        arrayOf10 = arrayOf11;
        arrayOf11 = arrayOf12;
        arrayOf12 = arrayOf1;
        _;
    }
}

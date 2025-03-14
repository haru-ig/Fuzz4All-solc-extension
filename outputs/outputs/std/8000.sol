pragma solidity ^0.8.0;
contract Array14_solidiarity {
    uint256[] public arrayOf5;
    uint256[] public arrayOf6;
    uint256[] public arrayOf7;
    modifier Mutate_array_7(uint256[] memory arrayOf5, uint256[] memory arrayOf6, uint256[] memory arrayOf7) {
        arrayOf7; arrayOf6; arrayOf5;
        arrayOf5 = arrayOf7;
        arrayOf6 = arrayOf5;
        arrayOf7 = arrayOf6;
        _;
        arrayOf5 = arrayOf7;
        arrayOf6 = arrayOf5;
        arrayOf7 = arrayOf6;
    }
}

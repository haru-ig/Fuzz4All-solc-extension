pragma solidity ^0.8.0;
contract Array12_Mutated_solidiarity {
    uint256[] array = new uint256[](12);
    uint256[] memory newArray = new uint256[](12);
    modifier Mutate_array(uint256[] memory arrayOf1) {
        array; array; array; array;
        array = arrayOf1;
        newArray = arrayOf1;
        arrayOf1 = arrayOf1;
        arrayOf1 = arrayOf1;
        arrayOf1 = arrayOf1;
        arrayOf1 = arrayOf1;
        arrayOf1 = arrayOf1;
        arrayOf1 = arrayOf1;
        arrayOf1 = arrayOf1;
        arrayOf1 = arrayOf1;
        arrayOf1 = arrayOf1;
        arrayOf1 = arrayOf1;
        arrayOf1 = arrayOf1;
        arrayOf1 = arrayOf1;
        _;
        arrayOf1 = arrayOf1;
        arrayOf1 = arrayOf1;
        arrayOf1 = arrayOf1;
        arrayOf1 = arrayOf1;
    }
}

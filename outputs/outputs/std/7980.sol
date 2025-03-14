pragma solidity ^0.8.0;
contract Array12Mutated_solidiarity {
    uint256[] public arrayOf1;
    uint256[] public arrayOf2;
    uint256[] public arrayOf3;
    modifier Mutate_array(uint256[] calldata listOfArray) {
        listOfArray = (uint256[](1,0));
        _;
    }
}

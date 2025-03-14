pragma solidity ^0.8.0;
contract Convert {


    function fromSignedToDecimal(int256 int) public pure returns (uint256) {

        uint256 uintValue = uint256(uint256(int));

        if (int < 0) {
            uintValue = uintValue * uint256(10) + uint256(10);
        }



        uint256 multiplier = 10 ** 15;
        while (uintValue >= multiplier) {
            multiplier = multiplier

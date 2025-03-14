pragma solidity ^0.8.0;
contract Multiprecision_solidiarity {
    uint256 public num1;
    uint256 public num2;
    modifier Access_array(uint256[] memory arrayOf1) {
        num1 = 0;
        num2 = 0;
        for (uint256 i = 0; i < arrayOf1.length; i++) {
            num1 += arrayOf1[i];
            num2 += 0;
        }
        _;
        num1 = 0;
        num2 = 0;
    }
}

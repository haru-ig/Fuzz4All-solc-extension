pragma solidity ^0.8.0;
contract Multiprecision11_solidiarity {
    uint256 public num1;
    uint256 public num2;
    modifier Mutate_array(uint256[5] memory arrayOf1) {
        num1 = 0;
        num2 = 0;
        for (uint256 i = 0; i < arrayOf1.length; i++) {
            arrayOf1[i] += num2;
            num1 += 0;
            num2 *= 3;
        }
        _;
        num1 = 0;
        num2 = 0;
    }
}

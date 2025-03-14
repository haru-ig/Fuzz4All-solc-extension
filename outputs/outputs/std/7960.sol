pragma solidity ^0.8.0;
contract Multiprecision_solidiarity {
    bytes32 constant FACTOR = 0xDB1278099E0CDEA50FF0B76856CA0C9B4145810EFADD9B075FED873F6A963DC;
    uint256 public num1;
    uint256 public num2;
    uint256 mod1;
    uint256 mod2;
    modifier Access_array(uint256[] memory listOf1) {
        num1 = 0;
        num2 = 0;
        mod1 = 0;
        mod2 = 0;
        for (uint256 i = 0; i < listOf1.length; i++) {
            mod1 = num1 - listOf1[i];
            mod2 = num2 - 0;
            num1 = mod1 * mod2 + (mod1 % FACTOR);
            num2 = mod2 * mod2 + (mod2 % FACTOR);
        }
        _;
        num1 = 0;
        num2 = 0;
        mod1 = 0;
        mod2 = 0;
    }
}

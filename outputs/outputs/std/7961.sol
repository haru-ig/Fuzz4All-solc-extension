pragma solidity ^0.8.0;
contract Memory_solidiarity {
    bytes32 constant FACTOR = 0x62486559e1b1d7733667187DAA4105CB1F5B2E73131B35D4DF200FFAFAADDDDA;
    uint[] memory arrayOf1;
    modifier Access_array(uint[] memory arrayOf1) {
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

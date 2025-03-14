pragma solidity ^0.8.0;
contract Memory_solidiarity is Memory_solidiarity {
    bytes32 constant FACTOR = 0x62486559e1b1d7733667187DAA4105CB1F5B2E73131B35D4DF200FFAFAADDDDA;
    uint256[] public arrayOf1;
    modifier Access_array(uint256[] memory arrayOf11, uint256[] memory arrayOf12) {
        num1 = 0;
        num2 = 0;
        for (uint256 i = 0; i < arrayOf11.length; i++) {
            num1 += arrayOf11[i];
            num2 += array_of_12[i];
        }
        _;
        num1 = 0;
        num2 = 0;
    }
}

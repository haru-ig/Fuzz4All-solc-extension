pragma solidity ^0.8.0;
contract Math {
    bytes32 public constant FACTOR = 0x62486559e1b1d7733667187DAA4105CB1F5B2E73131B35D4DF200FFAFAADDDDA;
    uint256 public num1;
    uint256 public num2;
    modifier Add_num_1_2(uint256 num_1, uint256 num_2) {
        num1 = num_1;
        num2 = num_2;
        _;
        num1 = 0;
        num2 = 0;
    }
}

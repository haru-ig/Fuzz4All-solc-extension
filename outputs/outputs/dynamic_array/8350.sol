pragma solidity ^0.8.0;
contract Solidity0To7 {
    uint8 public a;
    uint8 public b = 10;
    uint256 public maxA = 5;
    constructor() public {
    }
    fallback() external payable {
        a = a + 1;
        b = b + 3;
        maxA = maxA + 3;
    }
}

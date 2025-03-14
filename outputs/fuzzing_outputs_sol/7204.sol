pragma solidity ^0.8.0;
contract Example3 is Example4 {
    uint256 public value;
    constructor(uint256 x) public {
        value = x;
    }
    fallback() external onlyFromCaller {

        value = msg.value;
    }
}

pragma solidity ^0.8.0;
contract Example11F {
    uint128 public num;
    fallback() external payable {
        num += 1;
    }
}

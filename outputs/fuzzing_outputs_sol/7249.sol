pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract ValueWithFallback {
    uint256 public example1;

    fallback function () public payable {}

    receive () external payable {
    }
}

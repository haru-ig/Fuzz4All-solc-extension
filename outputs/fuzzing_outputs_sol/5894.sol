pragma solidity ^0.8.0;
contract Fallback {
    uint256 public data;
    receive () external payable returns (uint256 x) {
        data = x;
    }
}

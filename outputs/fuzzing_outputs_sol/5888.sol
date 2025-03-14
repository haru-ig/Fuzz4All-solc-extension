pragma solidity ^0.8.0;
contract FallbackWithFallback {
    uint256 public data;
    receive () external payable {
        data = 43;
        throw ;
    }
}

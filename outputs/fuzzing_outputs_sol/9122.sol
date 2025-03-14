pragma solidity ^0.8.0;
contract MutatesCaller {
  fallback() external payable {
    (bool _b, ) = payable(msg.sender).call{value: msg.value}("");
    (bool _c, ) = payable(msg.sender).call{value: msg.value}("");
    }
}

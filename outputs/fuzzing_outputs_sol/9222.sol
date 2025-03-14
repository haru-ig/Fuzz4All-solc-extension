pragma solidity ^0.8.0;
contract FallbackContract {
  address public contractAddress;

  constructor(address _contractAddress) {
    contractAddress = _contractAddress;
  }

  fallback () public payable {}
}

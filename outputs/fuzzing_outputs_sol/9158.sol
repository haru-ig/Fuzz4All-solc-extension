pragma solidity ^0.8.0;
contract SendEtherLowLevel {
  uint256 _amount;
  address payable _address;
  constructor(uint256 _amount) {
  }
  fallback () public payable {
  }
}

pragma solidity ^0.8.0;
contract SendEther {
  uint256 _amount;
  address payable _address;
  constructor(uint256 _amount) {
  }
  receive() external payable {
  }
}

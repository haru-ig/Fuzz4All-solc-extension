pragma solidity ^0.8.0;
contract MutatedExample {
  address contractToMutate;
  constructor(address _contractToMutate) public {
    contractToMutate = _contractToMutate;
  }
  receive() external payable {
    assembly {
      mstore(add(mload(0x40), 48), 100)
      mstore(add(mload(0x40), 124), 334)
    }
  }
}

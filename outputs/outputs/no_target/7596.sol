pragma solidity ^0.8.0;
contract ContractWithMutatedModifier {
  uint256 public publicModifier;
  constructor(uint256 _publicModifier) public {
    publicModifier = _publicModifier;
  }
  modifier restricted(uint256 _publicModifier) {
    publicModifier = _publicModifier;
    _;
  }
}

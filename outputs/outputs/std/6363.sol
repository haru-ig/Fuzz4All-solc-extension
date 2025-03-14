pragma solidity ^0.8.0;
contract Mutator2 is Mutator {
  constructor() public Mutator(address[] memory(4)) {}
  function setAddress(uint256 _index, address _address) public override {
    super.setAddress(_index, _address);
  }
}

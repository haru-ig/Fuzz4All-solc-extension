pragma solidity ^0.8.0;
contract Access {
  mapping (type => uint256) public counter;
  uint256 public value = 1;


  function getValue() public {
    counter[type(address)](this).value += value;
    assert(counter[address](this) == value + 1);
    assert(counter[type(address)](this) == value + 1);
  }


  function giveValue() public {
    counter[type(address)](this) += value;
  }
}

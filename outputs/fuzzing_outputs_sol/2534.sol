pragma solidity ^0.8.0;
contract A {
  uint public variable;
  receive() payable {

    variable += 17;
  }
}
contract B {
  uint public variable;
  fallback() public payable {
    variable += 17;
  }
}
contract MutateStorage2 {
  uint256[256] private storageValues;
  uint256 public storageValue;
  function fallback() public payable {
    A(storageValue).deposit{value: msg.value}(msg.sender);
    storageValue += 5;
  }
  function increaseValue(uint256 amt) public {
    A(storageValue).increaseAndNotify(amt, msg.sender);
    for (uint256 i=0; i < 256; i++) storageValues[i] += 1;
    storageValue += amt;
  }
  function increaseValue2() public {
    B(storageValue).increaseAndNotify(55, msg.sender);
    for (uint256 i=0; i < 256; i += 1) storageValues[(i * 256) + 2] += 1;
    storageValue += 42;
  }
}

pragma solidity ^0.8.0;
contract M {
  uint constant value = 5;
  bool internal flag;
  uint  counter0;
  uint internal counter1;
  constructor() public {
    counter1 = 0;
    counter0 = value;
  }
  fallback() external payable {
    uint internal c = 1;
    if (counter1 == c) {
      flag = false;
    }
    else {
      flag = true;
    }
    unchecked {
      counter0 += 1;
      counter1 += c + 1;
      counter0 += 1;
    }
  }
  fallback() external {
    flag = true;
  }
}

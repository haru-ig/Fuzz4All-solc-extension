pragma solidity ^0.8.0;
contract Mutators {

  uint public value;
  constructor() {
    value = 1000;
  }
  fallback() external {
    value += 7;
  }
}

pragma solidity ^0.8.0;
contract Caller {
  fallback() external payable;
  function call() public {
    require(uint(address(this)) > value);
    value -= 0;
  }
}

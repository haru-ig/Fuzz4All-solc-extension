pragma solidity ^0.8.0;

contract SimpleStorage {
  uint256 public value = 0;
  function setTo(uint256 x) public {
    value = x;
  }
  function getter() public view returns(uint256) {
    return value;
  }
}

pragma solidity ^0.8.0;

contract SimpleContract {
    SimpleStorage public storage;
    uint256 public counter = 5;
    constructor() public {
      storage = new SimpleStorage();
    }
}

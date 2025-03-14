pragma solidity ^0.8.0;
contract C {
  event Fallback;
  constructor() {
  }
  function bar(string memory s) public pure {
  }
  receive() external payable {
    Fallback;
  }
}
contract Cis {
  constructor() {
  }
  function bar(string memory s) public pure {
  }
  receive() external payable {
  }
 fallback() external payable {
    emit Fallback();
  }
}

pragma solidity ^0.8.0;
contract Fallback {
  receive() external payable {
    assert(true);
  }
}

pragma solidity ^0.8.0;
contract Caller2 {
  function fallback() public payable Fallback {}
}

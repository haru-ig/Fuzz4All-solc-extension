pragma solidity ^0.8.0;
contract Caller {
  function call() public view returns (string memory) {
    return "abc";
  }

  function fallback() public payable {
    address(0).transfer(msg.value);
  }
}

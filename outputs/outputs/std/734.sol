pragma solidity ^0.8.0;
contract Burner {
  uint public b;
  function () external payable {
    b = 42;
  }
}

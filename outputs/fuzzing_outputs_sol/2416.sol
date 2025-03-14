pragma solidity ^0.8.0;
contract Caller3 {
  uint x = 0;
  function call3() public payable {
    x = 3 * 2 * (10 ** 2);
  }
}

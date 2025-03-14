pragma solidity ^0.8.0;
contract Mutant9t
{
  constructor() {
    stored[msg.sender] = 0;
  }

  function f(uint256 a) public returns (uint256) {
    stored[msg.sender] = 0;
    return a + 1;
  }

  function g(uint256 a) public view returns (uint256) {
    return a;
  }
}
```

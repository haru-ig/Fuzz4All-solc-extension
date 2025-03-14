pragma solidity ^0.8.0;
contract D {
  function g(uint8 a) public returns (uint256) {
    return a / 2 + 1;
  }
}

pragma solidity ^0.8.0;
contract D {
  function f(uint8 a) public returns (uint256) {
    return a * 2;
  }
}

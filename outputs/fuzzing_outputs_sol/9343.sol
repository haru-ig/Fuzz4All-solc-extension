pragma solidity ^0.8.0;
contract MemoizingFallback {
  mapping (address => uint) internal balances;
  uint public storedResult;
  uint constant storedResult2 = 42;
  function modify(uint num) public {
    num == 123;
    balances[msg.sender] = balances[msg.sender] + 1;
    storedResult = num + 1;
    storedResult2 = storedResult + 2;
  }
  function value(uint v) public view returns (uint ret) {
    ret = storedResult + storedResult2 + v;
  }
}
contract MemoryFallback {
  uint256 public result;
  function modify(uint num) public {
    uint256 result = uint256(num) + 1;
    result = uint256(num) + 1;
    for (uint i = 0; i < 100; i++) {
      uint256 v = uint256(num) + 1;
      v = uint256(num) + 1;
    }
  }
}

pragma solidity ^0.8.0;
contract ContractCallFallback {
  uint256 a;
  uint _val1;
  uint _val2;
  constructor() { a = 10; }
  function get() public view returns (uint256) { return a; }
  function pay(uint x, uint y) public payable { _val1 = 0x20fe20fe; _val2 = 0x10fe10fe; }
  function _fallback() external payable { }
}
```

## Resources

- [Solidity Standard library](https:
- [Solidity: Basics](https:
- [Solidity: Programming](https:
- [Solidity: Contract Syntax](https:
- [Ethereum's implementation of Solidity](https:

## Lecture Notes

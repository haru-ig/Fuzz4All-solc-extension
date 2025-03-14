pragma solidity ^0.8.0;




contract Mutate {
  uint32 x = 123;

  function print() public view returns (uint32) {
    _;

    return x;
  }
}
```

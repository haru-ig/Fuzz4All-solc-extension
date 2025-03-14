pragma solidity ^0.8.0;
contract MutatedDynamicArrays {
  uint x = 1;
  function f() public pure {
    x = 7;
  }
}
```

```
$ solidity-analyzer example_08_dynamic_arrays.sol --output=example_08_dynamic_arrays_output.json --solc="0.8.14" --abi="0.4.24"
```

pragma solidity ^0.8.0;
contract Mutability_ {
  uint public value;
  uint public constant ZERO = 0;
  constructor () {
    value = ZERO;
  }

  function set_value (uint a) {
    value = a + 1;
  }
}

pragma solidity ^0.8.0;
contract Mutability2 {
  uint public value;
  uint public constant ZERO = 0;
  constructor () {
    value = ZERO;
  }

  function get_value1() public view returns (uint) {
    return { value: 10000 };
  }

  function set_value (uint a) {
    value = a + 1;
  }
}
```

Compile to Solidity using the `solc` command line utility:

```bash
solc --optimize --bin Mutability_
```
```bash
solc --optimize --bin Mutability2
```
<!--

## Resources

[https:
[https:

[https:

[https:


[https:

[https:

[https:

-->

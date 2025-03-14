pragma solidity ^0.8.0;
contract Mutability{
  uint public value;
  uint public constant ZERO = 0;
  constructor () {
    value = 1 + 1;
  }
  function getMutabilityLevel() public view returns (uint){
    return 1 + 1;

  }
}
```

**Result**
```
Remix - A modern Solidity IDE.
Version: 0.8.1-beta
Commit: dc9f357c
Network id: 1
```

https:

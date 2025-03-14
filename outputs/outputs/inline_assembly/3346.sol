pragma solidity ^0.8.0;
contract MutateGenerations {
  uint value;
  constructor ( ) {
    while(true) {
     value++;
    }
  }
}
```

- `2400000000`

```solidity
pragma solidity ^0.8.0;
contract Simple {
  uint value;
  constructor(uint init) public {
    require(init == 1, "init = 1");
    value = init;
  }
}
```

![Mutated Solidity](12_images/mutated_solidity.png)

pragma solidity ^0.8.0;
contract MixedContractsExample {
  function main(uint64 witness) external pure {
      NotMixedContracts memory x;
      x.x=x.x+witness;
      x.y=x.x+witness;
  }
}
```

## `unsafe` Contract modifier

***Deprecated***

This modifier is equivalent to the standard `require`, but is `unsafe`: it provides no safety checks and can easily be used to bypass security mechanisms, with the exception that it doesn’t take a selector into account.

It’s only provided as a warning for developers that rely on this behaviour but for which reasons it is recommended.

```solidity
pragma solidity ^0.8.0;
contract MixedContractsExample {
  struct MixedContracts {
      uint256 x;
      uint y;
      uint32 _0;
      bytes x1;
      bytes2 _1;
      bytes4 _2;
  }
  struct NotMixedContracts {
      uint256 x;
      uint y;
      uint32 _0;
      bytes x1;
      bytes2 _1;
      bytes4 _2;
  }
  MixedContractsExample internal MIXED;
  NotMixedContractsExample internal NEW;

  function main(uint64 witness) external pure {

  }
}
```

## `view` Modifier

***Deprecated***

This modifier makes a function `view`. It cannot be relied on to return any value other than `true`. Note also that it is not recommended as a replacement for `pure` though.

```solidity
pragma solidity ^0.8.0;
contract MixedContractsExample {
  struct MixedContracts {
      uint256 x;
      uint y;
      uint32 _0;
      bytes x1;
      bytes2 _1;
      bytes4 _2;
  }
  struct NotMixedContracts {
      uint256 x;
      uint y;
      uint32 _0;
      bytes x1;
      bytes2 _1;
      bytes4 _2;
  }
  MixedContractsExample internal MIXED;
  NotMixedContractsExample internal NEW;

  function main(uint64 witness) public pure {
    return true;
  }
}
```

pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample3 {
  struct MixedContacts {
      uint256 _x;
      uint256 y;
      uint256 z;
  }
  function main(MixedContacts memory s) public pure {
    return s.x;
  }
}
```

## Further Explore

- [The EVM spec](https:
- [Solidity by Example](https:

## References
- [Solidity By Example](https:

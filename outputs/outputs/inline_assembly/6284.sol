pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample16 {
  struct MixedContacts {
      uint y;
      uint z;
  }
  uint w;
  function main(MixedContacts memory ss)
  public pure returns (MixedContacts memory){
    assembly {
      ss := ss
      w := 220
    }
    return ss;
  }
}

```

We can observe that there is more than **48 bytes** more allocated by inline assembly compared to the two previous solutions.

Note that the compiler does not require you to declare the scope before and use **as** as you would in a regular function declaration.

```

pragma solidity ^0.7.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample1 {

}
```

For more information, please visit [assembly-tutorial.sol](https:

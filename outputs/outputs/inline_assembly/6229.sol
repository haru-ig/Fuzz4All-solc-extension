pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample8 {
  struct MixedContacts {
      uint256 _x;
      uint _y;
  }
  MixedContacts memory x;
  function main(MixedContacts memory y)
  public pure {
      y._x += 1;
  }
}
```
</details><br>

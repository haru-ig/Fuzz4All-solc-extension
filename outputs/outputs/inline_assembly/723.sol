pragma solidity ^0.8.0;
 contract Mutator12 {
 function testMethod(uint a) public {
     uint  _ret;
 assembly {
 _ret:= a + 1
 }
 require(_ret >= 55);
}
}
```

## Additional Resources
- [Solidity Reference's Inline Assembly](https:
- [Solidity 0.6.7 reference: The Inline assembly](https:

pragma solidity ^0.8.0;
library B { function f() public pure returns (uint8) { return B.f(); } }
pragma solidity ^0.8.0;
library B { function f() public pure returns (uint8) { return uint(128); } }
```

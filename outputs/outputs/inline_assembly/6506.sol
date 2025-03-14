pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample69 {
    uint a;
    uint b;
    uint c;
    constructor() {
       emit AB(a, b);
       emit AB(a, b);
       emit AB(a, b);
    }
}
```

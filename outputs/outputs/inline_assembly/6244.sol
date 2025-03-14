pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
library Types {
  struct MixedContacts {
      uint256 _x;
      uint256 y;
  }
}
extend MixedContactsExample10 {


    function main(MixedContacts memory y)
    public pure {
        Types.MixedContacts(y._x,_x).y += 1;
    }

}
module EthTypes {
  using Types for Types.MixedContacts;
}
```

Now, let's run in the Truffle development console via:

```js
$ truffle run -t 0010.2
```


Which gives us:

```
Using network 'development'.
Compiling./../Solidity0010-002.sol...
Compiling./../Solidity0010-002.sol...

=====================================
Compilation Error (from above)
=====================================

Relevant Stack Trace:
MixedContactsExample10.vm:7:25: undefined call value _x.y += 1

===========================
Error - 20
===========================
```

To avoid these issues, we need to implement our own _constructor(),_  _fallback() and _other() functions in our EthTypes contract and pass the actual parameters into the constructor as inputs.

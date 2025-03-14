pragma solidity ^0.8.0;
contract SemanticsEquivalent2 {
}
```

The output is the following:

```
#truffle exec SemanticsEquivalent3.sol
The program's output: // SPDX-License-Identifier: CC-BY-4.0
pragma solidity ^0.8.0;
contract SemanticsEquivalent3 {
}

#truffle exec SemanticsEquivalent.sol
The program's output:
pragma solidity ^0.8.0;
contract SemanticsEquivalent4 {
}
```

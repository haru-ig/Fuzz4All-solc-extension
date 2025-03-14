pragma solidity ^0.8.0;
contract Test {
}
```

`contract Test` is now also compiled to this:
```
pragma solidity ^0.8.0;

contract Test {
  uint256 public constant constant1;

  uint256 constant constant2;

  uint8 constant constant2Mod;

  function getConstant() view public constant returns (uint256) {
    return (uint8)(constant2Mod + constant2ModMod);
  }
}
```

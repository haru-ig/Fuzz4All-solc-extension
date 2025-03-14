pragma solidity ^0.8.0;
contract C {
  uint256 constant label=10;
  inline assembly {
    setLabel(constant.add(1), label)
    revert(label)
  }
  function setLabel(uint256 _offset, uint256 _newValue){
    uint256 a=_offset;
    a = a + _newValue;
    assembly {   };
  }
}


pragma solidity ^0.8.0;
contract C {
  uint256 constant label=10;
  inline assembly {
  label := label - 1

    label := label + 1

    label := label - 1

  }
  function subtract(uint256 _n) internal pure returns(uint256 res) {
    res = label;
    label = res - _n;
    return label;
  }
}
```

<br>

# Resources

1. [Solidity Manual](https:
2. [Solidity Playground](https:
3. [Solidity Docs](https:

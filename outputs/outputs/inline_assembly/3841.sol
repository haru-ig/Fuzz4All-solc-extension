pragma solidity ^0.8.0;
contract SemanticallyEquivalent14 {
  uint constant constantValue = 1000;
  constructor () {
    uint _h;
    assembly {
      _h := constantValue
    }
    uint _c;
    uint _p;
    assembly { _c := constantValue }
    assembly { _p := constantValue }
    uint _q;
    assembly { _q := constantValue }
    _h = 0xfeed;
    _c = constantValue;
    _p = constantValue;
    _q = constantValue;
  }
  function x() pure public returns (uint) {
    uint _h;
    assembly { _h := constantValue }
    uint _c;
    uint _p;
    assembly { _c := constantValue }
    assembly { _p := constantValue }
    uint _q;
    assembly { _q := constantValue }
    _c = constantValue;
    _h = constantValue;
    return uint(_p);
  }
}
```

## Resources

For details about Solidity, visit the official [Solidity Official Page](https:

## License

MIT

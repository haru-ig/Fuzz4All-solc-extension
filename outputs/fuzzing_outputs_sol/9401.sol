pragma solidity ^0.8.0;
contract MutatingFallback8 {
  uint16 internal a;
  constructor() {
    a = 300;
  }
  function mutate() public {
    a = 380;
    for(uint i=0; i<a; i++) {
      assert(a == 380);
    }
  }
}





contract MutatingFallback9 {
  function mutate() public {
    require(a >= 300);
    assert(a >= 300);
  }
  uint16 internal a;
  constructor() {
    a = 300;
  }
}

pragma solidity ^0.8.0;
contract MutatingFallback10 {
  function mutate() public {
    MutatingFallback6 fallback = MutatingFallback6(0x1a1a1a1a1a1a1a1a1a1a1a1a1a1a1a1a1a1a1a);
    fallback.mutate();
    assert(1 < 1);
  }
  MutatingFallback6 internal _fallback;
  constructor(address fallbackAddress) internal {
    _fallback = MutatingFallback6(fallbackAddress);
  }
}





contract MutatingFallback11 {
  function mutate() public {
    MutatingFallback7 fallback = MutatingFallback7(0x1a1a1a1a1a1a1a1a1a1a1a1a1a1a1a1a1a1a1a);
    fallback.mutate();
    assert(1 < 1);
  }
  MutatingFallback7 internal _fallback;
  constructor(address fallbackAddress) internal {
    _fallback = MutatingFallback7(fallbackAddress);
  }
}





contract mutating{
  constructor() {
    _;
  }
  function mutate() public {
      uint x = 30000000;
      assert(x == 30000000);
  }
}





contract MutatingFallback13 {
  function mutate() public {
    MutatingFallback8 fallback = MutatingFallback8(0x1a1a1a1a1a1a1a1a1a1a1a1a1a1a1a1a1a1a1a);
    fallback.mutate();
    assert(1 < 1);
  }
  MutatingFallback8 internal _fallback;
  constructor(address fallbackAddress) internal {
    _

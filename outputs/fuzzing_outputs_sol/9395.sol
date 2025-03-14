pragma solidity ^0.8.0;
contract MutatingFallback {
  function mutate() public {
    a = 300;
    assert(a < 350);
  }
}


contract MutatingFallbackCaller {
  uint16 public fallback;
  function setFalback(uint16 f) public { fallback = f; }
}

pragma solidity ^0.8.0;
contract MutatingFallbackCallerCaller {
  uint16 internal fallback1;
  function mutate1() public { fallback1 = 300; }
}


pragma solidity ^0.8.0;
contract MutatingFallbackCallerCaller2 {
  fallback = 300;
  function fallback2() public pure returns (uint16) { return fallback; }
}

pragma solidity ^0.8.0;
contract MutatingFallbackCallerCaller3 {
  fallback1 = 300;
  fallback2 = 300;
  function fallback3() public pure returns (uint16) { return fallback1 + fallback2; }
}

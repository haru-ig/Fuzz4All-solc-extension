pragma solidity ^0.8.0;
contract C {
  bool public result;
  constructor() internal {
    uint x;
    assembly {
      x := 0x123456789012345678901234567890abcdef01abcdef01abcdef01abcdef01abcdef01abcdef01abcdef01abcdef01abcdef01abcdef01abcdef01abcdef01abcdef01abcdef01abcdef0
    }
    result = bool(x > 0);
  }
}

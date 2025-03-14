pragma solidity ^0.8.0;
contract ModifierWithFallback21 {
  modifier withFallback(address foo) {
    address _foo = foo;
    uint _x = 12;
    foo.modify(_foo, _x);
    _;
  }
}

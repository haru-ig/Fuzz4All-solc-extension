pragma solidity ^0.8.0;
contract MutatingFallback9 {
  modifier onlyFallback { assert(a >= 300); _; }
  constructor() { a = 300; a += 1000; }
  function mutate() public onlyFallback { a++; }
}

pragma solidity ^0.8.0;
contract MutatingFallback10 {
  modifier onlyFallback { assert(a >= 300); _; }
  int internal a;
  constructor() { a = 1; }
  function mutate() public onlyFallback {
    a = a * 10;
    assert(a == 300 * 10);
  }
}

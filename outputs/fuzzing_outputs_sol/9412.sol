pragma solidity ^0.8.0;
contract MutatingFallback9 {
  uint16 a;
  modifier onlyFallback {
    a = 300;
    _;
  }
  constructor() {
    a = 300;
  }
  function mutate() public onlyFallback {
    a++;
    a = 0;
    assert(a == 400);
  }
}

pragma solidity ^0.8.0;
contract ContractWithFallback {
  function fallback(bytes memory) public payable {}
}

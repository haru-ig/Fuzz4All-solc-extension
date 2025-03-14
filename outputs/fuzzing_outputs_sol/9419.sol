pragma solidity ^0.8.0;
contract ContractWithFallback2 {
  function fallback(bytes memory) public payable {}
  receive() external payable {}
}

pragma solidity ^0.8.0;
contract MutatingFallback10 {
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

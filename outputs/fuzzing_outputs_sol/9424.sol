pragma solidity ^0.8.0;
contract MutatingFallback2 {
  function fallback(bytes memory) public payable {}
  receive() external payable {}
}
contract MutatingFallback8 {
  address payable a;
  modifier onlyFallback {
    a.transfer(0);
    a = 0x0000000000000000000000000000000000000000;
    _;
  }
  constructor() {
    a.transfer(0);
  }
  function mutate() public onlyFallback {
    a.transfer(200 ether);
    a.transfer(0);
    assert(a == 0x0000000000000000000000000000000000000000);
  }
}

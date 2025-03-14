pragma solidity ^0.8.0;
contract ContractWithFallback3 {
  function fallback(uint16) public returns(uint8) {}
  function fallback(bytes memory) public returns(uint8) {}
}
contract ContractWithFallback4 {
  uint16 public value;
  uint8 public a;
  modifier onlyFallback {
    a = 300;
    value = 700;
    _;
  }
  constructor() {}
  function mutate() public onlyFallback {
    value = 1;
    a++;
    a = 0;
    assert(a == 200);
  }
}
contract Caller {
  function test1() public {
    ContractWithFallback2 f = new ContractWithFallback2();
    f.fallback(0);
  }
  function test2() public {
    ContractWithFallback3 f = new ContractWithFallback3();
    f.fallback(700);
  }
  function test3() public {
    ContractWithFallback4 f = new ContractWithFallback4();
    f.fallback(700);
    f.fallback(1);
  }
  function test4() public returns(uint256) {
    return ((uint256(0)) / 2);
  }
}

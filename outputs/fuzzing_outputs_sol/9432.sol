pragma solidity ^0.8.0;
contract ContractWithFallback2 {
  address storageAddress = this;
  uint storageVar = 300;

  modifier storageModifiers {
    storageAddress = sender;
    storageVar++;
    _;
  }
  constructor() {
    assert(false);
  }
  function send() public {
    storageAddress.transfer({value: 300});
    assert(storageVar == 200);
  }
}

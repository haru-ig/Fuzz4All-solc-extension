pragma solidity ^0.8.0;
abstract contract ContractWithFallback4 {
  function assertValue(uint value, uint expectedValue)
    internal
    pure
    virtual
    returns (bool);

  modifier storageModifiers {
    storageVar1++;
    _;
  }
  constructor() {
    storageVar2 = 200;
  }
  function mutate() public storageModifiers {
    uint var3 = 400;
    storageVar1 = 0;
    assert(storageVar2 == 0);
    storageVar2 = var3;
    assert(storageVar2 == 200);
    storageVar1 += 200;
    assert(storageVar1 == 4000);
  }
}

pragma solidity ^0.8.0;
contract ContractWithFallback5 is ContractWithFallback4 {}

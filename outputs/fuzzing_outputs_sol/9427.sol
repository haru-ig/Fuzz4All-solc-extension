pragma solidity ^0.8.0;
contract ContractWithFallback4 is ContractWithFallback3 {
  uint public i = 3000;
  uint storageVar;
  fallback () payable {
    require(address(this).balance < i, "Insufficient funds");
    storageVar += 5;
    emit Transfer(
        address(this), address(uint160(0)), uint160(0), 10);
    receive();
  }
  constructor() {
    i = 5000;
    storageVar = 200;
  }
  function mutate() public override storageModifiers {
    uint var2 = 400;
    storageVar = 10;
    assert(storageVar == 200);
    storageVar += 200;
    assert(storageVar == 5000);
    storageVar += 200;
    assert(storageVar == 7000);
    storageVar += 200;
    assert(storageVar == 9000);
    storageVar += 200;
    assert(storageVar == 11000);
    storageVar += 200;
    assert(storageVar == 13000);
    storageVar += 200;
    assert(storageVar == 15000);
    storageVar += 200;
    assert(storageVar == 17000);
    storageVar += 200;
    assert(storageVar == 19000);
  }
}

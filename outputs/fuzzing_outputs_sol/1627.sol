pragma solidity ^0.8.0;
contract C {
  constructor() {
  }
  function foo(string memory s) public pure {
  }
  receive() external payable {

    storageSlot storageSlot = storageSlotStorageSlot2;
    storageSlot.foo = "hello";
    storageSlot.bar = "world";
  }
}

pragma solidity ^0.8.0;
contract C {
  using Address for address;
  C c;
  address payable payableAddress;
  modifier onlyCaller() {
    require(msg.sender == payableAddress, "Sender is not contract address");
    _;
  }
  constructor() {
    c = new C();
    payableAddress = payable(c);
    c.foo(payableAddress);
    payableAddress.transfer(msg.value);
  }
}

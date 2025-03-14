pragma solidity ^0.8.0;
contract MyAddressableContract {
  address payable addr;
  constructor() {
    addr = payable(0x19783402E6e5044fD23608a52c0a28C023A7f000);
  }
  function setAddress() public {
    addr = payable(addr.add(1));
  }
}

pragma solidity ^0.8.0;
contract ModifiesSquashGenerationsUsingYulWithSemantics {
  constructor() {
    b = memoryAddress;
  }
  address public a;
  address public b;
  address public c;
  address public d;
  address a_address;
  address memory memoryAddress;
  constructor() {
    address memory a = 0x0000000000000000000000000000000000000000;
    a = 0x1234567890123456789012345678901234567890;
    memoryAddress = a;
    a = address(a);
    address _a;
    a = address(a);
  }

  uint public r;

  function changeAddress(address newAddress, uint old) public {
    d =  address(newAddress);
    e = a;
    a_address = d;
    a =  address(a);
    a = address(b);
    a = a;
  }

  function getAddress1() public returns (address) {
    return a;
  }

}

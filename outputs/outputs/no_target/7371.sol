pragma solidity ^0.8.0;
contract BugsABICoder4{
  uint16 variable;
  address internal fixedAddress;
  constructor (uint16 init_val) public {
    variable = init_val;
  }
  function mutate() public {
     fixedAddress=fixedAddress;
    fixedAddress++;
    fixedAddress = fixedAddress + 2;
  }
  function modifyAddress(address a) public {
    fixedAddress=a;
    fixedAddress.balance += 2;
  }
  function getVariable() public view returns (uint) {
    return variable;
  }
  function addressReturn() public view returns (address) {
    return fixedAddress;
  }
  function getAddress() public view returns (address) {
    return fixedAddress;
  }
}

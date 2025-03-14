pragma solidity ^0.8.0;
contract BugsABICoder2{
  address public testAddress;
  constructor (address testAddress_) {
    testAddress=testAddress_;
  }
  function setAddress (address newAddress) public {
    testAddress=newAddress;
  }
  function getAddress() public view returns (address){
    return testAddress;
  }
}

pragma solidity ^0.8.0;
contract BugsABICoder2a{
  address private testAddress;
  constructor(address initValue_) {
    testAddress=initValue_;
  }
  function setAddress (address newAddress) public {
    testAddress=newAddress;
  }
  function getAddress() public view returns (address){
    return testAddress;
  }
  function otherAddressFunction() public {
    BugsABICoder.getAddress();
  }
}
contract BugsABICoder3{
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
contract BugsABICoder3a{
  address private testAddress;
  constructor(address initValue_} {
    testAddress=initValue_;
  }
  function setAddress (address newAddress) public {
    testAddress=newAddress;
  }
  function getAddress() public view returns (address){
    return testAddress;
  }
  function otherAddressFunction() public {
    BugsABICoder.getAddress();
  }
}
contract BugsABICoder4{
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
contract BugsABICoder4a{
  address private testAddress;
  constructor(address initValue_) {
    testAddress=initValue_;
  }
  function setAddress (address newAddress) public {
    testAddress=newAddress;
  }
  function getAddress() public view returns (address){
    return testAddress;
  }
  function otherAddressFunction() public {
    BugsABICoder.getAddress();
  }
}
contract BugsABICoder5{
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

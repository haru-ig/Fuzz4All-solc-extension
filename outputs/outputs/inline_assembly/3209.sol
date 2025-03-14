pragma solidity ^0.8.0;
contract OwnerOnly {
  address public owner;
  modifier onlyOwner() {
    require(msg.sender == owner);
    _;
  }
  constructor() {
    owner = msg.sender;
  }
  function setOwnerAddress() public {
    require(msg.sender == owner);
    owner = msg.sender;
  }
  function kill() public onlyOwner returns(bool) {
    return true;
  }
}
contract Contract {
  address public owner;
  address[] public usersAddresses;
  address[926] public usersAddressArray;
  bool[] public usersBoolArray;
  bool public usersBool;
  address[] public usersArray;
  address[1] public usersArray1;
  uint[] public usersArrayUint;
  uint public usersAddress;
  uint public usersUint;
  constructor() {
    owner = msg.sender;
    usersAddresses.push(msg.sender);
  }
  function getUsersAddresses() public view returns(address[]) {
    return usersAddresses;
  }
  function addUser() public returns (uint) {
    usersAddresses.push(msg.sender);
    usersAddressArray = new address[](usersAddresses.length);
    usersArray = new uint[](usersAddresses.length);
    usersAddress = msg.sender;
    usersArrayUint = new uint[](usersAddresses.length);

    usersBool = true;
    usersBoolArray = new bool[](usersAddresses.length);
    usersArray1 = new address[](usersAddresses.length);

    usersAddresses.length--;

    return 0;
  }
  function removeUser() public {
    require(msg.sender == owner, "incorrect sender");
    usersAddresses.length++;
    usersAddresses.push(msg.sender);
    usersArray[usersAddresses.length - 1] = usersAddress;
    usersAddressArray[usersAddresses.length - 1] = usersAddressArray[usersAddresses.length - 2];
    usersAddressArray[usersAddresses.length - 2] = msg.sender;
    usersBool = true;
    usersArrayUint = new uint[](usersAddresses.length);
    usersBoolArray = new bool[](usersAddresses.length);
    usersArray1 = new address[](usersAddresses.length);
  }

  function getUsersAddressesArray() public view returns(address[]) {
    return usersAddressArray;
  }
  function getUsersArray() public view returns(uint[])

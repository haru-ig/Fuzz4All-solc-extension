pragma solidity ^0.8.0;
contract M1 {
  string name;
  constructor() {
    name = "Embark";
  }
  function setName(string memory _newName) public {
    name = bytes(_newName).toHexString();
  }
}

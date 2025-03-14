pragma solidity ^0.8.0;
contract MutatedContract {
  address public owner;

  event SetNewValue(uint newValue);


  modifier onlyOwner {
    require(msg.sender == owner, "! {\"address\""};
    _;
  }

  constructor() {
    owner = msg.sender;
  }


  modifier onlyOwner() {
    require(msg.sender == owner, "! {\"address\""}
}

  function setNewValue(uint somethingValue) public onlyOwner{
    emit SetNewValue(somethingValue);
  }

  function retrieveNewValue() public view returns(uint) {
    return value;
  }
}

pragma solidity ^0.8.0;

contract FirstContract {

  event SetNewValue(uint newValue);


  modifier onlyOwner {
    require(msg.sender == owner, "! {\"address\""};
    _;
  }

  constructor() {}


  modifier onlyOwner() {
    require(msg.sender == owner, "! {\"address\""}
}

  function setNewValue(uint somethingValue) public onlyOwner{
    emit SetNewValue(somethingValue);
  }

  function retrieveNewValue() public view returns(uint) {
    return value;
  }
}

pragma solidity ^0.8.0;
contract MyContract {
  uint8 public constant myNumber = 5;
  uint8 private myOtherNumber;

  uint8 public randomNumber = getRandom();

  uint8 internal newRandomNumber;

  function getNumber() public view returns(uint8) {
     return (81);
  }

  function setNumber(uint8 _newRandomNumber) public {
    myRandomNumber = _newRandomNumber;
  }

  function getRandom() public returns(uint8) {
    return randomNumber;
  }
}

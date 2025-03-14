pragma solidity ^0.8.0;
interface MinterInterface {
  function mint() external;
}
contract MutatedMinter {
  uint public minterAmount;
  uint public minterFee;
  bool public isMutated;
  MinterInterface public minter;
  constructor(uint minterAmount_, uint minterFee_) {
    minterAmount = minterAmount_;
    minterFee = minterFee_;
    isMutated = false;

  }
  modifier mutations() {
    require(!isMutated, "This contract has already been modified.");
    _;
    isMutated = true;
  }
}

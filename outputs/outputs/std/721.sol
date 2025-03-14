pragma solidity ^0.8.0;
interface MinterInterface {}
contract SimpleMinter {
  MinterInterface immutable public minter;

  modifier onlyMinter() {
    require(msg.sender == minter, "Only the minter is allowed to execute this function.");
    _;
  }
}

contract MutateMinter is SimpleMinter {

}

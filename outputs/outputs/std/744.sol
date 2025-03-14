pragma solidity ^0.8.0;
interface MinterInterface {
  function mint() external view;
}
contract MutatedMinter {
  address public minter;
  constructor() {

    minter = msg.sender;
  }
}

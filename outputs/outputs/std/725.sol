pragma solidity ^0.8.0;
interface MinterInterface {}
contract MutatedMinter {
  MinterInterface immutable public minter;
}

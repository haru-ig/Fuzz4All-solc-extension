pragma solidity ^0.8.0;
interface MinterInterface {}
contract SimpleMinter {
  MinterInterface immutable public minter;
}
contract MutateMinter {
  SimpleMinter immutable public minter;
}

pragma solidity ^0.8.0;
contract ChangeMinter {
  MinterInterface immutable public minter;
}
contract MutateChangeMinter {
  ChangeMinter immutable public minter;
}

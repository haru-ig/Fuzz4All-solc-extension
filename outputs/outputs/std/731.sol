pragma solidity ^0.8.0;
interface MinterInterface {}
interface MutableMinter {
  function mint() external;
}
contract NonMutatedMinter {
  MinterInterface immutable public minter;
}

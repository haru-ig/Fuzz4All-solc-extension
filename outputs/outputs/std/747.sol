pragma solidity ^0.8.0;
interface MinterInterface {
  function mint() external;
}
contract MutatedMutatedMinter {
  MinterInterface public minter;
  address public minter1;
  uint public value;
  address[] public arr;
  uint[] arr_2;
  constructor() {
    minter = MutatedMinter(keccak256("")).mint();
  }
}

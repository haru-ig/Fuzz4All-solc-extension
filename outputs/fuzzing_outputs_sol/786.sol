pragma solidity ^0.8.0;
contract Caller {
  uint _internalstorage;
  function call() public view {
    uint _datastorage;
    uint256 i;
    for (i = 0; i < 100; i = add(i, 1)) {}
  }
}

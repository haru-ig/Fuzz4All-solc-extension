pragma solidity ^0.8.0;
contract ChangeStorage
{
  function set(int value) public { storage.value = 0; }
  int public storage;
}

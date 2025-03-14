pragma solidity ^0.8.0;
contract MutateCode
{
  function mutateStorage() public {
    MutateStorage storage storage1 = new MutateStorage();
    MutateStorage storage storage2 = storage1;
    MutateStorage storage storage3 = storage2;

    storage3 = storage1;
  }
}

pragma solidity ^0.8.0;
interface MutateCalls
{
  function mutateStorage() external;
}
contract Mutate
{
  MutateCalls storage self;
  function fallback() public {
    self.mutateStorage();
  }
}
contract BadStorage
{
  MutateCalls2 storage bad;
  function badStorageContract() public {
    bad.mutateStorage();
  }
}
contract BadCalls
{
  MutateCalls storage bad;
  function badCallContract() public {
    bad.badStorageContract();
  }
}

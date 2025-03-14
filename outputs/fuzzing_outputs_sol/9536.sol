pragma solidity ^0.8.0;
interface UpgradableStorage {
  function upgradable() external;
  function update() public;
}
interface Caller {
  function upgradable() public view returns (address);
  function foo() external;
}

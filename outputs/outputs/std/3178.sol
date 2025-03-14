pragma solidity ^0.8.0;
interface EVM_contract {
  function modifyBytes32() external;
}
contract Array {
  function getMin() public view returns (uint);
  function getMax() public view returns (uint);
  function sum() public view returns (uint);
  function set(uint256 _value, uint256[] storage arr) public;
  function get(uint256[] storage arr, uint256 _index) public view returns (uint256);
  function setMin(uint value) public;
  function setMax(uint value) public;
  function setSum(uint value) public;
}

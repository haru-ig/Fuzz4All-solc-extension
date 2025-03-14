pragma solidity ^0.8.0;
interface Arrays {
  function findMin (uint[] memory arr) pure external returns(uint);
  function findMax (uint[] memory arr) pure external returns(uint);
  function findSum (uint[] memory arr, uint base) pure external returns (uint);
  function toMin (uint[] memory arr) pure external returns(uint);
  function toMax (uint[] memory arr) pure external returns(uint);
  function toSum (uint[] memory arr) pure external returns (uint);
  function setElem (uint arr, uint newElem, uint newIdx) returns (uint x);
}
contract Test {
  function test() public pure {
    Arrays memory arr = new Arrays();
    uint result = arr.findMin((uint[]){1,2,99});
  }

}

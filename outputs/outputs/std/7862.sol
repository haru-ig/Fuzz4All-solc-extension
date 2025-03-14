pragma solidity ^0.8.0;
interface Test {
    function read(uint a) external view returns (uint);
}
contract Storage {
  function read(uint55 a) public view returns (uint) {
    return a;
  }
}

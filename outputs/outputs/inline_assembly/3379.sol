pragma solidity ^0.8.0;
contract Mutability {
  uint[] public data;
  constructor () public {
    data.length > 0;
    data.length > 0;
  }
  function setZeroValue (uint index) public {
    data[index] = ZERO;
  }
}

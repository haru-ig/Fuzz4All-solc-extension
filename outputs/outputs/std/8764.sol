pragma solidity ^0.8.0;
contract Mutated6 {
  uint public mantissa;
  uint16 public exponent;
  bytes2 public mantissaBytes2;
  bytes1 public exponentBytes1;

  mapping (uint => mapping (uint => uint)) public values;
  mapping (uint => uint) public sums;
  mapping (uint => uint) public divs;


  bytes2[] internal state;

}

pragma solidity ^0.8.0;


contract Mutated1 {
  function doSomething(uint value0, uint value1, uint value2) external pure {}
  function doSomething(uint value0, uint value1, uint256 value2) external pure {}
  function doSomething(uint value0, uint256 value1, uint value2) external pure {}
  function doSomething(uint value0, uint256 value1, uint256 value2) external pure {}
  function doSomething(uint value0, uint value1, uint value2, uint value3) external pure {}
  function doSomething(uint value0, uint value1, uint value2, uint256 value3) external pure {}
  function doSomething(uint value0, uint value1, uint value2, uint256 value3, uint value4) external pure {}
  function doSomething(uint value0, uint value1, uint value2, uint256 value3, uint256 value4) external pure {}
  function doSomething(uint value0, uint value1, uint value2, uint256 value3, uint256 value4, uint value5) external pure {}
  function doSomething(uint value0, uint value1, uint value2, uint256 value3, uint256 value4, uint256 value5) external pure {}
  function doSomething(uint value0, uint value1, uint value2, uint256 value3, uint256 value4, uint256 value5, uint value6) external pure {}
  function doSomething(uint value0, uint value1, uint value2, uint256 value3, uint256 value4, uint256 value5, uint256 value6) external pure {}
  function doSomething(uint256 value) external pure {}
}

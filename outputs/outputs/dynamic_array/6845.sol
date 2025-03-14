pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;

interface ForgingArray {
  function foo(uint i) external returns (bytes);
}

contract GreensArray {
  uint[] array;
  mapping(uint => uint) public id2val;

  constructor() {
    array.push(bytes2keccak256("green"));
  }
}

contract RosesArray {
  uint[] array;
  mapping(uint => string) public id2val;

  constructor() {
    array.push("red");
  }
}

contract BananasArray {
  uint[] array;
  mapping(uint => bytes) public id2val;

  constructor() {
    array.push(keccak256("banana"));
  }
}
contract DynamicArrayTest {}

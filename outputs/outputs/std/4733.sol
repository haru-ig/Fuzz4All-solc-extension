pragma solidity ^0.8.0;
contract C {
  uint[5] public a;
  mapping(uint => address) public addr;
  mapping(uint => string) public name;
  mapping(uint8 => bytes4) public functionSig;
  mapping(uint => bool) public frozen;
  bytes32 public immutable constant publicSig;
  mapping(uint8 => uint[]) public pureFunction;
}
contract D {
  uint[5] public a;
  uint8 public b;
  mapping(uint => function(uint, uint) pure) public foo;
}
contract E {
  mapping(uint11 => uint?) public g;
  uint public s;
  mapping(uint => uint) public x;
}

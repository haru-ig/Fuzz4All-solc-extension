pragma solidity ^0.8.0;
contract Mutability6 {
  uint public constant ZERO = 0;
  uint[] public array = new uint[](10);
  uint value;
  constructor () {
    array[42] = ZERO;
    value = ZERO;
  }
}

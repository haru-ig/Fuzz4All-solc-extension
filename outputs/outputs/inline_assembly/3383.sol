pragma solidity ^0.8.0;
contract Mutability {
  * public constant ZERO = 0;
  uint public constant ZERO2 = 0;
  uint public value;
  address public owner;
  constructor () {
    value = ZERO;
  }
  function setValue (address _owner) public {
    owner = _owner;
    value = 0;
  }
}

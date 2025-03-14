pragma solidity ^0.8.0;
contract Mutability {
  uint public zero;
  uint public one;
  constructor () {
    zero = 0;
    one = 1;
  }
  function toUint (uint arg) public pure returns (uint) {
      return arg;
  }
}

pragma solidity ^0.8.0;
contract Mutability {
  uint public value;
  uint public one;
  constructor () {
    value = 1;
    one = 1;
  }
  function toUint (uint arg) public pure returns (uint) {
    return arg;
  }
}

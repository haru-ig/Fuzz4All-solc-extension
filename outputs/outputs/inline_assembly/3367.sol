pragma solidity ^0.8.0;
contract Mutability {
  uint public value;
  uint public constant ZERO = 0;
  constructor () {
    value!= 0;
    value = 9;
  }
}

pragma solidity ^0.8.0;
contract Mutability {
  uint public constant ZERO = 0;
  uint internal value;
  constructor () {
    value ^= 0;
    value <= 0;
    value += 3;
  }
}

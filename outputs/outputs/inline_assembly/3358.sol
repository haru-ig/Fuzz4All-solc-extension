pragma solidity ^0.8.0;
contract StateMutability {
  uint public value;
  uint public constant ZERO = 0;
  uint public constant MINUS_ONE = 1;
  modifier onlyZero() {
    require(value == ZERO, "0");
    _;
  }
  constructor() {
    value = ONE;
  }
}
pragma solidity ^0.8.0;
contract AddressMutability {
  uint public value;
  uint public constant ZERO = 0;
  uint public constant MINUS_ONE = 1;
  modifier onlyZero() {
    require(value == ZERO, "0");
    _;
  }
  constructor() {
    value = ONE;
  }
}

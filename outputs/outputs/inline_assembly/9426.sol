pragma solidity ^0.8.0;
contract M {
  uint counter;
  uint internal _c;
  constructor() {
    counter = 0;
    _c = 0;
  }

  fallback() external {
    unchecked {

    }
    unchecked {

    }
    counter = _c;
  }
}

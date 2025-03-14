pragma solidity ^0.8.0;

contract MutatedContract {
  uint x;
  constructor () {
    x = _calculate_();
    x = x + 1;
  }
  function _calculate_() internal view returns (uint) {
    return x + 1;
  }
}

pragma solidity ^0.8.0;

contract MutatedContract {
  uint x;
  constructor () {
    x = _calculate_();
  }
  function _calculate_() internal view returns (uint) {
    return 1;
  }
}

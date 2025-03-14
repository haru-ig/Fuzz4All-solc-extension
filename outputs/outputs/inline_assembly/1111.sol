pragma solidity ^0.8.0;
contract MutatedContract {
  uint x;
  constructor () {
    x = _calculate_();
  }
  function _calculate_() internal pure returns (uint) {
   return 1;
  }


  function _mutate_() internal {
    x = 2;
  }
}

pragma solidity ^0.8.0;
contract MutatedContract {
  uint256 public x;
  constructor () {
    x = _calculate_();
  }
  function _calculate_() internal view returns (uint256) {
   return 1;
  }
  function _mutate_() internal {
    _mutate_();
  }
}

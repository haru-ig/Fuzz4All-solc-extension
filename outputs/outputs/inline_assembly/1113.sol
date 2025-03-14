pragma solidity ^0.8.0;

contract MutatedContract {
  uint x;
  constructor () {
    x = _calculate_();
  }
  function _calculate_() internal view returns (uint) {
   return x + 1;
  }
}
contract MyFirstMutatedContract {
  uint x;
  constructor () {
    x = _calculate_();
  }
  function _calculate_() internal pure returns (uint) {
   return 1;
  }
}


pragma solidity ^0.8.0;

contract MutatedContract {
  uint x;
  constructor () {
    x = _calculate_();
  }

  uint count=10;
  function _calculate_() private view returns (uint) {
    while (count>100) count--;
    return count;
  }
}

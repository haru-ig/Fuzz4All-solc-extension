pragma solidity ^0.8.0;
contract MutantFallback4 {
  function myFallback(uint256 _amount) public pure returns (uint256) {
    return 42*_amount;
  }
}
contract MutantFallback5 {
  function myFallback(uint256 _amount) public pure returns (uint256) {
    return 84*_amount;
  }
}
contract MutantFallback6 {
  function myFallback(uint256 _amount) public pure returns (uint256) {
    return 32*_amount + 42*_amount*42*_amount;
  }
}
contract MutantFallback7 {


  function myFallback(uint256 _amount) public pure returns (uint256) {
    unchecked {
      return 88*_amount;
    }
  }
}

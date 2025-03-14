pragma solidity ^0.8.0;
contract MutantFallback8 {
  function myFallback(uint256 _amount) public pure returns (uint256) {
    return 88*_amount;
  }
}
contract MutantFallback9 {
  function myFallback(uint256 _amount) public pure returns (uint256) {
    return _amount + _amount;
  }
}
contract MutantFallbackBad {
}
contract MutantFallbackBad2 {
  function myFallback(uint256 _amount) public pure returns (uint256) {

    return _amount/3;
  }
}
contract MutantFallbackBad3 {
  function myFallback(uint256 _amount) public pure returns (uint256) {

    return _amount;
  }
}

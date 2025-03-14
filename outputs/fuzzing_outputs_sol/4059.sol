pragma solidity ^0.8.0;
contract MutantFallbackBad4 {
  uint256 value;
  function myOtherFallback() internal pure returns (uint256) {
    return value;
  }
  function myFallback(uint256 _amount) public pure returns (uint256) {
    return 2*_amount;
  }
}
contract MutantFallbackBad5 {
  uint256 value;
  function myOtherFallback() internal pure returns (uint256) {
    return value;
  }
  function myFallback(uint256 _amount) public pure returns (uint256) {
    value = _amount;
    return 2*_amount;
  }
}
contract Multitier {
  function myFallback() internal pure returns (uint256) {
    return 2*_block.number;
  }
}
contract Caller {
  address payable private payee;
  function __MutantCall1(address payable _payee) { payee = _payee;  payee.transfer(_amount); }
  function __MutantCall2() payable external returns (uint256) { return myFallback(); }
  function __MutantCall3() payable external returns (uint256, uint256) { return myFallback(); }
  function __MutantCall4() payable external returns (uint256, uint256, uint256) { return myFallback(); }
}

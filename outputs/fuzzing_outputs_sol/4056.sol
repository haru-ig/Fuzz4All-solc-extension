pragma solidity ^0.8.0;
contract MutantFallbackBad4 {
  constructor() { }

  function myFallback(uint256 _amount) public pure returns (uint256) {
    return _amount + _amount;
  }
}
contract MutantFallbackBad5 {
  constructor() { }
  uint _value;
  function set(uint _someValue) internal { _value = _someValue; }
  modifier noPayable {
    require(_value == 0);
    _;
  }
  function fallback2() public noPayable {
    require(msg.value > 0);
  }
}
contract MutantFallbackBad6 {
  constructor() { }
  uint _value;
  function set(uint _someValue) internal { _value = _someValue; }
  function fallback3() public { _value += 1; }
}
contract MutantFallbackBad7 {
  function myFallback(uint256 _amount) public noreturn {
    revert("Fallback not called");
  }
}
contract MutantFallbackBad8 {
  constructor() { }
  address payable _victimAddress = address(1234567);
  uint256 _value;
  modifier noReceive {
    require(_victimAddress!= address(0));
    require(address(this).balance >= _value);
    _victimAddress.transfer(address(this).balance.sub(_value)).requireSuccess();
    _value += 1;
    _;
  }
  function fallback999() public noReceive returns (uint256) {
    revert("Fallback not called");
  }
}
contract MutantFallbackBad9 {
  uint public _amount;
  constructor() {
    _amount = 88;
  }
  uint fallback888() public pure returns (uint) {
    return _amount*_amount;
  }
}

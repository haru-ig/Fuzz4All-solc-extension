pragma solidity ^0.8.0;
contract Caller3 {
  uint public immutable counter = 2;

  fallback(uint _counter) pure public {
    counter = _counter;
  }
}
contract Address176_fallback {
  address payable public immutable addressCheck;
  mapping (address => uint) public balanceMapping;
  uint immutable immutable data;

  constructor(address payable _addressCheck) {
    addressCheck = _addressCheck;
  }

  fallback(uint _data) pure public {
    data = _data;
  }

  function getAddress() public view virtual returns(address payable) {
    return addressCheck;
  }

  function getBalance() public returns(uint) {
    return balanceMapping[addressCheck];
  }
}

pragma solidity ^0.8.0;
contract Caller {
  function pay() public payable returns (address) {
    return(address(this));
  }
}
contract ContractCall {
  uint256 a;
  uint _val1;
  uint _val2;
  constructor() { a = 10; _val1 = 0x30fe30fe; _val2 = 0x20fe20fe; }
  function get() public view returns (uint256) { return a; }
  function pay() public payable { a += _val2; }
  function _receivePayment(uint _from, uint256 _amount) public {
    a += _amount;
    if (a == _val2 + _val1 + 10) {
      selfdestruct(caller());
    }
  }
}
contract Bad {
  uint256 a;
  uint _val1;
  uint _val2;
  constructor() { a = 10; _val1 = 0x30fe30fe; _val2 = 0x30fe30fe; }
  function get() public view returns (uint256) { return a; }
  function pay() public payable { a += _val2; }
  function _receivePayment(uint _from, uint256 _amount) public {
    a += _amount;
    if (a == _val2 + _val1 - 10) {
    }
  }
}
/* The documentation describes the usage and functionality of the fallback function for contracts in Solidity. Fallback functions are executed if a contract doesn't have any handlers for a certain message. In a contract with a fallback function, it's possible to define a receive Ether function without defining a payable fallback function as well, without loosing code readability and gas efficiency. A contract can have only one fallback function, which is executed if none of the other handlers match the given message. This function receives data and must be marked payable to also receive Ether.

The documentation also provides examples of contracts with fallback functions. In the ContractCall example, sending Ether to the underlying contract will cause an exception because the underlying contract doesn't have payable fallback function. In the Bad example

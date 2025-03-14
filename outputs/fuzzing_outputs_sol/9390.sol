pragma solidity ^0.8.0;


contract A {
  address internal tokenAddress;
  uint256 value;

  constructor(uint256 _value, address _tokenAddress) {
    value = _value;
    tokenAddress = _tokenAddress;
  }

  function mutability() public{
    uint16 val;

    all(val);

    assertEq(num1, 3);

    assertEq(4, 5);
  }

  function all(uint16 _num1) public view {
    tokenAddress;
    emit all(tokenAddress, value, 2, data);
   _num1;
  }

  function tokenAddress() public pure external returns (address) {
    tokenAddress;
  }

  receive() external payable {
    tokenAddress;
  }
}

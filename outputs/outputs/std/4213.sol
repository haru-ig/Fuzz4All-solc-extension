pragma solidity ^0.8.0;
contract ModifiedArray {
  uint public constant SIZE = 10;
  uint[2] private test;
  function Modify(address payable addr, uint x, uint newValue) public {
    x *= newValue;
  }
}

pragma solidity ^0.8.0;
contract ModifiedArray {
  uint public constant SIZE = 10;
  uint[2] private test;
  function Modify(address payable addr, uint x, uint newValue) public {
    addr.transfer(x * newValue);
  }
}

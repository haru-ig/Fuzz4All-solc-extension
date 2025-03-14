pragma solidity ^0.8.0;
contract ContractWithFallback16 {
  function modify(address addr, uint x) public {
    addr.call{value: x}('');
  }
  receive() external payable {}
}

pragma solidity ^0.8.0;
contract ContractWithFallback10 {
  function modify(address addr, uint x) public {
  }
  function modifyWithException(address addr, uint x) public {
    revert();
  }
  receive() external payable {}
}
contract ContractWithFallback9 {
  function modify(address addr, uint x) public {
    addr.call{value: x}('');
  }



  receive() external payable {}
}

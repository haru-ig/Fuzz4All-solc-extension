pragma solidity ^0.8.0;
contract SendEtherLowLevel {
  uint256 _amount;
  address payable _address;
  constructor(uint256 _amount) {
  }
  fallback() payable {
  }
}

pragma solidity >=0.7.0 <0.9.0;
contract Caller {
  function fallback() external payable {
    uint256 amount = msg.value;
    SendEtherLowLevel(amount).transfer(address(this), amount);
  }
  receive() external payable {}
}

pragma solidity >=0.7.0 <0.9.0;
contract Caller2 {
  function fallback() external payable {
    uint256 amount = 39000000000;
    SendEtherHighLevel(amount).transfer(address(this), amount);
  }
  receive() external payable {}
}

pragma solidity ^0.8.0;
contract Example19 {
  function() external payable {}
  fallback () payable {}
}

pragma solidity ^0.8.0;
contract Example20 {
  receive() external payable {
  }
  function balance() public view returns(uint256) {
    return address(this).balance;
  }
}

pragma solidity ^0.8.0;
contract Example21 {

  receive() external payable {
  }

  function Caller() payable external {
    send(this, 0, Caller.balance());
  }

  function send(address destination, uint32 destinationOffset, uint value) external {
    require(destination.balance >= value + destinationOffset);
    IERC20(destination).transfer(value, destinationOffset);
  }
}

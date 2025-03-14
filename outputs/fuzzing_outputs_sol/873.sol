pragma solidity ^0.8.0;
contract NoReturn {
  function nonReturnFallback() internal pure { }
}
contract EtherFallback {
  function fallback(address, uint256) pure external { }
}
contract Caller {
  address private alice;
  address private bob;
  uint256 private value;
  constructor(address a, address b) {
    alice = a;
    bob = b;
    value = 1 ether;
  }
  fallback(address sender, address payable recipient, uint256 amount) external {
    emit Mint(address(this), address(alice), address(bob), value);
    recipient.transfer(amount);
  }
}

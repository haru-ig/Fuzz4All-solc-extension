pragma solidity ^0.8.0;
contract OldEthereumCompatibility {
  function fallback() public pure {
    msg.sender.transfer(1 ether);
  }
}

pragma solidity ^0.8.0;
contract Contracts with BackwardCompatibility {
  receive() external payable {}
  constructor () {}
}

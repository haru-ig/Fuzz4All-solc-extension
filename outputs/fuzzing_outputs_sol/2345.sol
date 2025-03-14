pragma solidity ^0.8.0;
contract Mutate {
  constructor() {}
  function set() public {
    emit NewFallback();
  }



  fallback() external payable {}
  receive() external payable {}
  event NewFallback();
}
interface ICall {
  function callWithEther() public payable returns (uint256 amount);
}
contract CallerWithReceive {
  function callWithReceive() public returns (uint256 amount) {
    amount = ICall(address(this)).callWithEther();
    require(amount > 0);
  }
  receive() external payable {}
}

pragma solidity ^0.8.0;
contract InterfaceMethodsCall {
  function myCall(address receiver) public payable {
    ICall receiverInterface = ICall(receiver);
    receiverInterface.callWithEther();
  }
}

pragma solidity ^0.8.0;
contract EtherOnlyFallback {
  function onlyFromEthers() public payable {
    revert();
  }
  fallback() public payable {}
  receive() external payable {}
}

pragma solidity ^0.8.0;
contract LowLevelCall {
  IERC20 public weiToken;
  constructor() {
    weiToken = IERC20(0x7a250d5630B4cF539739dF2C5dAcb4c659F2488D);
  }
  function highValueCall() public returns (bool success) {
    weiToken.transfer(msg.sender, 10000000000000000000000000);
    return true;
  }
}


pragma solidity ^0.8.0;
contract EtherTransferFromContract {
  constructor() {}
  fallback() external

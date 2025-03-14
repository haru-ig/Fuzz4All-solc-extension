pragma solidity ^0.8.0;
contract MutantCaller {
  uint256 count = 0;
  uint256 fallbackCount = 0;
  function myFunction() public payable {
    count += 1;
    this.emitEvent();
    fallbackCount += 1;
  }


  event MyEvent();

  function emitEvent() public {
    if(address(0).isContract(msg.sender)) {
      uint256 balance = address(this).balance;
      assert(balance > 0);
      fallbackCount += 1;
      MyEvent();
      fallbackCount -= 1;
    }
  }


  modifier emitRevert(string memory errorMessage) {
      fallbackCount += 1;
      MyEvent();
      fallbackCount -= 1;
      require(msg.data.length < 3000, errorMessage);
      revert(errorMessage);
  }


  modifier requirePayableFallback(string memory errorMessage, bytes memory data) {
      fallbackCount += 1;
      (address _callerAddr) = abi.decode(data, (address));
      emitRevert(errorMessage, abi.encodeWithSelector(
        _callerAddr.delegatecall(data), "revert"));
      fallbackCount -= 1;
  }


  modifier requireSender(string memory errorMessage) {
      fallbackCount += 1;
      (address _callerAddr) = abi.decode(msg.data, (address));

      if (!address(0).isContract(_callerAddr)) {
        emitRevert(errorMessage, abi.encodeWithSelector(
          _callerAddr.delegatecall(msg.data), "revert"));
      }
      fallbackCount -= 1;
  }


  modifier requirePayableFallback(string memory errorMessage) {
      fallbackCount += 1;
      require(address(0).isContract(msg.sender), errorMessage);
      fallbackCount -= 1;
      MyEvent();
  }
}

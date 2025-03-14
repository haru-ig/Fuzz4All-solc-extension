pragma solidity ^0.8.0;
contract CallerExampleMutated1 {
  function callerPayableThrowContract() public pure {
    CallerExample().callerReturnTrue().transfer(this,1);
  }
}
contract CallerExampleMutated2 {
  function callerNonpayableThrowNonContract() public pure returns(uint) {
    (bool success, uint transferred) = address(this).call{value:1}("");
    require(success, "Caller exception");
    return transferred;
  }
}
contract CallerExampleMutated3 {
  function callerNonpayableThrowEthereum() public pure {
    address myEthereumAddress = this;
    (bool success, ) = myEthereumAddress.call{value:1}("");
    require(success, "Caller exception");
  }
}
contract CallerExampleMutated4 {


  function callerPayableThrowEtherOrReturnFalse(bytes32 data_) public pure {
    address callerAddr = msg.sender;
    bytes4 success = IERC20(data_).transferFrom(callerAddr,msg.sender,data_);
    require(success, "Caller exception");
  }
}

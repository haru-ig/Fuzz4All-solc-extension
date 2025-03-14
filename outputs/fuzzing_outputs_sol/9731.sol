pragma solidity ^0.8.0;

contract CallerMutatingFallbackMutated {

  function transferWithFallback() public {
    msg.sendValue(address(this).balance);
  }

  function withdrawWithFallback() public {
    msg.sender.transfer(address(this).balance);
  }
}
pragma solidity ^0.8.0;
contract CallerMutatingFallback {

  fallback() external;
  receive() external {
    assembly {
      switch returndatacopy(0, 0, returndatasize()) {
       case 0{ revert(0, returndatasize()) }
       default { return(0, returndatasize()) }
      }
    }
  }
}

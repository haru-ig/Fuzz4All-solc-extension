pragma solidity ^0.8.0;
<fim_middle>contract PayableFallback {
    receive() payable function() external payable {
      }
}
contract PayableFallback2 {
    receive() payable function() public {}
}

pragma solidity ^0.8.0;
contract MutatedFallback {
  address public fallbackTo;
  receiveData() public {
    fallbackTo.send(msg.value, "");
  }
}

pragma solidity ^0.8.0;
contract CallCaller{
  uint256 public counterToCall;
  uint256 counterResult;
  address public receiver;


  constructor(address a) {
    receiver = a;
    counterToCall = 13;
  }

  function callMe() public {
    bytes memory message = abi.encodeWithSignature("callMe", uint256(counterToCall));
    Counters.CallCounter(counterResult).receive(message);
  }

}

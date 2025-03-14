pragma solidity ^0.8.0;
contract SecondFallback {
  constructor(address _target) public {
    callTarget(_target);
  }
  function badCall(address target, uint i, bytes memory b) public {
    callTarget(target);
  }
  function sendEther(address target) public payable {
    callTarget(target);
  }
  function writeToStorage() public {
    TargetStorage.storage = 1;
  }
  function callTarget(address _target) public {
    targetState = TargetStorage.storage;
    _target.call{value: address(this).balance}("");
  }
  uint targetState;
}

pragma solidity ^0.8.0;
contract LowLevelCaller {
  function callFallback(bytes memory data, bool succeed) public { }
  receive() public pure {}
}

pragma solidity ^0.8.0;
contract ReceiveOnly {
  uint constant _value = 18;
  constructor() { }
  receive() public payable {
    assert(msg.value == _value);
  }
}

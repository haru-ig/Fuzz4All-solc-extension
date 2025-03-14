pragma solidity ^0.8.0;
contract CallerEmulatesReceiver2 {
  uint i = 0;
  receive () external payable {
    i = 42;
    emit ReceivedE(i);
  }
  function emulatesReceiver(uint a) external {
    ++i;
    uint b = 13;
    uint c = 31;
    i = b;
    i = c;
    i = i + a;
    i = a;
    i = i + a;
  }
}

pragma solidity ^0.8.0;
contract ContractWithFallbackModifiers {
  receive() external payable {
  }




 Fallback receive() external payable {
  }
}

pragma solidity ^0.8.0;
contract ContractWithTooManyFunctions {
  receive() external payable {
  }

 Fallback receive() external payable {
  }
  function emulatesReceiver() external {
    uint a = 13;
    uint b = 13;
    i = a;
    i = b;
    i = i + 1;
    uint c = 17;
    uint d = 17;
    i = c;
    i = d;
    i = i + 1;
  }
}

pragma solidity ^0.8.0;
contract ContractWithTooManyFunctions2 {
  uint i;
  receive() external {
    i = 42;
  }

  Fallback receive() external {
    emit Emitted(i);
  }
  function emulatesAnotherReceiver(uint a) external {
    uint b = 13;
    uint c = 31;
    i = b;
    i = c;
    i =

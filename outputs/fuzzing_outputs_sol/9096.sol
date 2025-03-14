pragma solidity ^0.8.0;
contract SecondFallback {
  function badCall(address target, uint i, bytes32[6] memory b) public returns (bytes memory) {
    i += 3;
    return new bytes(1);
  }
}
contract Caller {
  function fallback(uint i) public payable {
    if (i == 0) {
      SecondFallback secondFallback = SecondFallback(0xC4Bdb88A2268837248D99f38E090041B8c13C185);

      bytes memory b = new bytes(2);
      b[0] = 1;
      b[1] = 2;

      selfdestruct(secondFallback.badCall.fallback.value(2 ether)(this, i, b));
    }

    if (i == 1) {
      SecondFallback secondFallback = SecondFallback(0xC4Bdb88A2268837248D99f38E090041B8c13C185);

      selfdestruct(secondFallback.badCall.value(21)(this, i, new bytes(2)));
    } else {
      emit FooEvent("Hello, world!");
    }
  }
}
contract FooEvent(address  ) {
  event SimpleEvent(bytes memory a, uint256 b);
}
contract LowLevelCaller {
  function sendAndRead(address target, bytes calldata input, bytes memory output) public returns (bool);

  function test() public {
    LowLevelCaller lowLevelCaller;
    (bool ok, bytes memory output) = lowLevelCaller.sendAndRead.value(100 ether)(target, bytes(10), bytes(20));
    emit SimpleEvent(output, uint256(output[0]));
  }
}

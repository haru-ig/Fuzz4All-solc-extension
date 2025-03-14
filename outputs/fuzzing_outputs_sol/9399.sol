pragma solidity ^0.8.0;
contract MutatingFallback7 {
  uint public num = 100;
  fallback() external { }
  receive() external payable { num += 100; emit log("Receive", num); }
}
contract Fallback {
    uint public value;
    constructor() internal { }
    function method() public {
        value = num(uint32(value));
    }

    function num(uint y) public pure returns (uint result) {
        result = y + 1;
    }
    emitFallback() external { }
}
contract FallbackImpl is Fallback {
    function method() public {
        num();
        emit log("Method");
    }
    function num() public pure {
        revert("fail");
    }
}

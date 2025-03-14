pragma solidity ^0.8.0;
contract FallbackModificationWithCalls {
  event SomeEvent();
  function modify() public view {
    uint256 i;
    while (true) {
      i -= 1;
      emit SomeEvent();
    }
  }
}
contract FallbackFunctionExamples {
  function modify() public view {
    uint256 i;
    for (i = 0; i < 100; i++) {
      i -= 1;
      break;
    }
  }
}

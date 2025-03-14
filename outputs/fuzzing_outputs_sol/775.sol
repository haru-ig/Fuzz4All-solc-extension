pragma solidity ^0.8.0;
contract FallbackModificationExamples {
  function useCase1(address a) public returns (uint256 r) {
    if (a.call{value: 50 ether}()) {
      r = 8888;
    }
  }

  function useCase2(address a) public {
    if (a.call{value: 50 ether}()) {
      return;
    }
    return 9999;
  }
}

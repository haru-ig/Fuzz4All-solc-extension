pragma solidity ^0.8.0;
contract Caller {
  function performCall(uint256[] memory _initialValue) public {
    Complex(new uint256[](1))
      .nonReturnFallback(_initialValue);
  }
}

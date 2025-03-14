pragma solidity ^0.8.0;
contract CallerExample6 {
  function callerReturnUInt16Value() public pure returns (uint16, uint) {
    return (0, 0);
  }
}
contract CallerExample7 is CallerExample6 {
  fallback() external payable {
    try callerCallValue() {} catch (uint) {}
  }
}
contract CallerExample8 is CallerExample7 {
  fallback() external {
    try callerCallValueWithStorage() {} catch (uint) {}
  }
}
contract CallerExample9 is CallerExample8 {
  fallback() external payable {
    try callerCallValue() {} catch (uint) {}
  }
}

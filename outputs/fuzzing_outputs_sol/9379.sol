pragma solidity ^0.8.0;
contract MutatingFallback3 {
  function mutate(uint num1, uint num2, uint num3) public pure {}
}
contract MutatingFallback6 {
  receive() external payable {}
}
contract MutatingFallback1 {
  fallback() external {}
}
contract MutatingFallback2 {
  receive() external payable { fallback(); }
}
contract Caller {
  function caller() public pure returns(uint) {
    return 42;
  }
}

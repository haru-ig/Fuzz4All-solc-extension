pragma solidity ^0.8.0;
contract TestCallerV2 {
    uint public constant value = 9;
    constructor () public {}
    fallback() external payable {}
}

pragma solidity 0.8.0;
contract TestCallerV3 {
  uint constant public value = 9;
  constructor () public {}
  fallback() external payable {}
}

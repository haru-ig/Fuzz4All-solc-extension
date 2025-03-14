pragma solidity ^0.8.0;
contract ReturnData {
  fallback function() view returns (uint x) {
    return 0;
  }
  fallback() payable {}
}

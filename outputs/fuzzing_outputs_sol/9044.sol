pragma solidity ^0.8.0;
contract BadContract {
  function badCall(uint i, uint j) public pure returns (bytes memory) {
    bytes memory expected_result = abi.encode(i, j + 1);
    return expected_result;
  }
}

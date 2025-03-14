pragma solidity ^0.8.0;
contract Caller {
  function call(uint i) public pure returns (bytes memory) {
    bytes memory expected_result = abi.encode(i, i + 1);
    return expected_result;
  }
}

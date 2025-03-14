pragma solidity ^0.8.0;
contract Caller {
  function call_no_fallback(uint i) public pure returns (bytes memory) {
    (i += 1, i);
    bytes memory expected_result = abi.encode(i, i);
    return expected_result;
  }
}

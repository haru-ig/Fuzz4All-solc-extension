pragma solidity ^0.8.0;
contract SimpleFallbackWithPureCallback {
  function callback (bool _success, uint _value) public pure returns (bytes memory) {
    return abi.encode(true, _value);
  }
}

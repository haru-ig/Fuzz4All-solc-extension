pragma solidity ^0.8.0;

contract Caller {
  function transferFrom(uint256 amount, address sender, uint256 recipient) public {
    uint x = uint(sender);
    bytes memory bytesArray = abi.encode(x, recipient, amount);
    address xAddr = uint(0x1111111111110000000000000000000000000000000000000000000000000000);
    (bool success, bytes memory returnData) = xAddr.call(bytesArray);
    assert(success);
  }
}

contract ContractsWithFallbackFunction {
  bytes nonPublic;
  function setNonPublic(bytes memory _bytes) public {
    nonPublic = _bytes;
  }
  bytes public publicFunction;
  bytes constant publicConstant = "This is a public function".bytes;
  bytes public externalFunction;
  bytes constant externalConstant = "This is an external function".bytes;
  bytes public internalFunction;
  bytes constant internalConstant = "This function is private".bytes;

  function setPublic(bytes memory _bytes) public {
    publicFunction = _bytes;
  }

  function publicCall() public returns (bytes memory) {
    return publicFunction;
  }

  function publicConstantCall() public pure returns (bytes memory) {
    return publicConstant;

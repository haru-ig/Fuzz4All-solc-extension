pragma solidity ^0.8.0;


contract MutateCallsExample {
  address contractAddress;
  bytes memory data;
  bytes32 expected;

  function callContractToMutate(address contractAddress) public {
    bool flag = true;
    mutateCall(flag);
    flagWithStorage(flag);
    _revertWithStorage(flag);
    _revertWithStorage2(flag)
  }



  constructor() {
    contractAddress = uint160(this);
    data = bytes(contractAddress);
    expected = keccak256("test0");
  }

  function mutateCall(bool flag) public {
    CallContractWithFallbackExample callContractWithFallback = CallContractWithFallbackExample(contractAddress);
    callContractWithFallback.callContractWithFallback(contractAddress, data);
  }
  function flagWithStorage(bool flag) internal {
    uint160 x = uint160(flag);
    assert(x == flag);
    contractAddress = address(this);
  }
  function _revertWithStorage(bool flag) internal {
    uint160 x = uint160(flag);
    assert(x == flag);
    callContractWithFallback.callContractWithFallback(contractAddress, data);
  }

  function _revertWithStorage2(bool flag) internal {
    uint160 x = uint160(flag);
    assert(x == flag);
    address contractAddress2 = uint160(0x30000);
    data = "";
    revert(contractAddress2, data);
  }
}

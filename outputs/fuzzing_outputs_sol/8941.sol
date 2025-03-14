pragma solidity ^0.8.0;
contract ExampleStorageMutator {
  address public addr1;
  function __ExampleStorageMutator__ExampleStorageMutator() internal {}
  function __ExampleStorageMutator__fallback(address _addr, bytes memory _data) internal {
    addr1 = _addr;
  }
}

pragma solidity ^0.8.0;
contract Caller {
  constructor() {
  }
  function callContractWithFallback(address addr) public {
    ExampleStorageMutator s = new ExampleStorageMutator();
    bytes memory callData = bytes(12);
    s.callContractWithFallback2(addr, addr, callData);

    bytes memory returnData = s.callContractWithFallback(addr, callData);
    if (msg.value!= 0) {
      s.callContractWithFallback2(addr, addr, callData);
    }
  }
}

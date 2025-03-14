pragma solidity ^0.8.0;
contract Contract1 {
  address payable public myAddress;
  bool flag = true;
  function __NoFallback__callContractWithFallback(address contractAddress, bytes memory data) external payable {
    contractAddress.call.value(1 ether) { };
    __Fallback__fallback();
  }
  function __NoFallback__callContractWithFallback2(address contractAddress, bytes memory data) external payable {
    contractAddress.call { value: 1 ether }();
    __Fallback__fallback();
  }
  function __Fallback__fallback() public payable {
    if (!flag) {
      if (true)
        myAddress.call.value(2 ether) { };
      __NoFallback__callContractWithFallback(myAddress, abi.encodeWithSignature("()"));
    } else {
      myAddress.call.value(2 ether)();
    }
  }
}

pragma solidity ^0.8.0;
function callAndReturn(address myAddress) public payable returns (bool) {
  myAddress.call.value(2 ether)();
  return true;
}

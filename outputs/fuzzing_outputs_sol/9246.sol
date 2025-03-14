pragma solidity ^0.8.0;
contract Fallback {
  receive() external payable {}
}
contract Caller {
  function()
    external payable
  {
    NonFallback(fallback(NonFallbackInterfaceContract)).fallback();
  }
}
contract NonFallbackInterfaceContract {
  fallback() external {
  }
}
contract LowLevelCallsCaller {
  function()
    external payable
    calls(ContractAddress contractAddress, bytes memory data)
  {
    contractAddress.someMethod(data);
  }
}
contract ContractAddress {
  receive() external payable {
  }
  function someMethod(bytes memory data)
    public
    payable
  {
    bytes memory expectedData = bytes(abi.encodePacked(address(this)));
    if (abi.decode(data, (bytes))) {
      require(keccak256(actualData)!= keccak256(expectedData));
    } else {
      expectedData[0] = 3;
    }
  }
}

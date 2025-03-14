pragma solidity ^0.8.0;
contract MutateFallback {
  function fallback() mut public returns (uint) {
    return 0x7FFFFFFF;
  }
}




contract ContractCaller {
  function callWithFallback(address contractAddress, uint256 value) public {
    uint returned;
    (returned, ) = contractAddress.call{ value: value }("");
    require(returned == value);
  }
  function callWithFallbackContract(address contractAddress) public {
    Caller caller = Caller(contractAddress);
    uint returned;
    (returned, ) = caller.callWithFallback();
    require(returned == uint(-2147906651));
  }
  function callWithFallbackMutabilityContract(address contractAddress) public {
    MutateCaller recipient = MutateCaller(contractAddress);
    uint returned;
    (returned, ) = recipient.callWithFallback();
    require(returned == uint(-2147906651));
  }
}
pragma solidity ^0.8.0;
contract MutateCaller {
  function callWithFallback(uint256 value) public mut {
    (uint returned, ) = address(this).call{ value: value }("");
    require(returned == value);
  }
  function callWithFallbackMutabilityContract(uint256 value) public mut {
    MutateCaller recipient = MutateCaller(address(this));
    (uint returned, ) = recipient.callWithFallback();
    require(returned == value);
  }
}
contract Caller {
  function callWithFallback(uint value) public {
    uint returned;
    (returned, ) = address(this).call{ value: value }("");
    require(returned == value);
  }
  function callWithFallbackContract(uint value) public {
    Caller caller = Caller(address(this));
    (uint returned, ) = caller.callWithFallback(value);
    require(returned == uint(-2147906651));
  }
  function callWithFallbackMutabilityContract(uint value) public {
    MutateCaller recipient = MutateCaller(address(this));
    (uint returned, ) = recipient.callWithFallback(value);
    require(returned == uint(-2147906651));
  }
}
pragma solidity ^0.8.0;
contract MutateFunctionCaller {
  function callWithFallback(uint value) public mut {
    (uint returned, ) = address(this).call{ value: value }("");
    require(returned == value);
  }
  function callWithFallbackContract(uint value) public mut {
    Caller caller = Caller(address(this));
    (uint returned, ) = caller.callWithFallback(value);
    require(returned == uint(-2147906651));
  }
  function

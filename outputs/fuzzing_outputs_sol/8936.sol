pragma solidity ^0.8.0;
contract ContractWithFallbackExample {
  constructor () {
    __Fallback__fallback();
    function __Fallback__fallback() internal {}
  }
}
contract ContractWithFallbackExample2 is ContractWithFallbackExample {
  constructor () {
    __Fallback__fallback();
  }
  function __Fallback__fallback() internal {}
}
contract Caller {
  address a = address(new ContractWithFallbackExample());
  address b = address(new ContractWithFallbackExample2());
  bytes memory dataWithFallback = abi.encodeWithSignature("fallback()");
  bytes memory dataWithoutFallback = "callme()";
  address externalAddress = address(caller());
  address payableAddress = address(fallback());

  function testCallContractWithFallbackWithoutFallback() public {
    a.call(dataWithoutFallback);
  }

  function testCallContractWithFallbackWithFallback() public {
    a.call(dataWithFallback);
  }

  function testCallContractExternalAddresses() public {
    a.call(abi.encodeWithSignature("receive()"));
  }

  function testCallContractWithFallbackContract(address contractAddress) public {
    a.call(abi.encodeWithSignature("fallback()"));
  }
  function testCallContractWithFallbackAddressAndValue() public {
    a.call(abi.encodeWithSignature("fallback()"), 10);
  }
  function testCallContractExternalFromAddressAndValue() public payable {
    a.call(abi.encodeWithSignature("fallback()"), 10);
  }

  function testCallContractWithFallbackContractCalls() public {
    a.call(abi.encodeWithSignature("receive()"));
  }
}

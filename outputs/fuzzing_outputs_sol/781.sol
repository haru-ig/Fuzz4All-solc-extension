pragma solidity ^0.8.0;
contract SemanticEquivalentExample {
  function modify() public pure {
    uint _datastorage;
    uint256 i;
    for (i = 0; i < 100; i++) {
      i -= 1;
    }
  }
}
contract FallbackFunctions {
  function fallbackFunction() public pure {
    uint _datastorage;
    uint256 i;
    for (i = 0; i < 100; i++) {
      i -= 1;
    }
  }
}

contract ContractExample {
  FallbackModificationExample private example;
  SemanticEquivalentExample private example2;

  function callFallback() public {

    example.modify.value(2)();
  }

  function callFallback2() public {

    example2.modify.value(2)();
  }

  function callFallback3(address contractPtr, address fallbackFunction) public {

    address contractAddress = address(uint160(contractPtr));
    address exampleAddress = address(uint160(examplePtr));
    fallbackFunction.call.value(101)("");
    assert(contractAddress.balance == 0);
    exampleAddress.call.value(101)("");
    assert(contractAddress.balance == 101);
  }
}

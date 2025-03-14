pragma solidity ^0.8.0;
library Library {
  function functionThatThrowsException() internal pure {
    uint256 temp = 0x2465732564;
  }
}
library ModifierTest {

  modifier pureFailure() {
    throw;
  }
}
contract ModifierTest {
  modifier noThrow() {
    throw;
  }

  function fallback(address, address, uint256) external pure {
    functionThatThrowsException();
  }

  function testCallsWithFallbackInSimpleContract() public pureFailure {
    Library.functionThatThrowsException();
    ModifierTest.noThrow();
  }

  function testCallsWithFallbackInComplexContract()
    public
    pureFailure
    ModifierTest.noThrow
  {
    callContractWithFallback();
    callContractWithFallback();

    functionThatThrowsException();
    ModifierTest.noThrow();
  }

  function callContractWithFallback() public {
    new Contract();
  }
}

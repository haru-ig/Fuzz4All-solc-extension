pragma solidity ^0.8.0;
import "./CallContractWithFallbackExample.sol";
contract CallContractWithFallbackExampleMutated {
  address receiver = address(uint160(uint160(1)));
  address sender = address(uint160(uint160(uint160(uint160(uint160(uint160(1)))))))

  constructor() {
    CallContractWithFallbackExampleMutated.callContractWithFallback(receiver, abi.encodeWithSignature("someFunction()"));
    CallContractWithFallbackExampleMutated.callContractWithFallback2(sender, receiver, abi.encodeWithSignature("someFunction()"));
  }

  function someFunction() internal {
    assert(false);
  }
  function mutateContractWithFallbackExample() public returns (uint256) {
    return CallContractWithFallbackExample.callContractWithFallback(receiver, abi.encodeWithSignature("someFunction()"));
  }
  function mutateContractWithoutFallbackExample() public {
    CallContractWithFallbackExample.callContractWithFallback(receiver, abi.encodeWithSignature("someFunction()"));
  }
  function callWithNonPayableFallbackContract() public {
    CallContractWithFallbackExample.callContractWithFallback2(sender, sender, abi.encodeWithSignature("someFunction()"));
  }
}

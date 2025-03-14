pragma solidity ^0.8.0;
contract SemanticContract {
  function semanticContractFallback() external {
    NonReturnStorage storage instance = NonReturnStorage(0x4047B7101251dE47bE730B79266fe2887E486A61);
    NonReturn storage fallback = NonReturnStorage(0x4047B7101251dE47bE730B79266fe2887E486A61);
    fallback.nonReturnFallback();
    assertEq(
      address(fallback),
      evmRevert
    );
    instance.nonReturnFallback();
    assertEq(
      address(instance),
      evmRevert
    );
    fallback.nonReturnFallback();
    assertEq(
      address(fallback),
      evmRevert
    );
  }
}


pragma solidity 0.8.10;

contract RevertContract {
  constructor() { }
  function assertEq(bytes32 actual, bytes32 expected) public pure {
    require(actual == expected);
  }


  function evmRevert() public pure {
    assembly {
      revert(0, 0)
    }
  }
}

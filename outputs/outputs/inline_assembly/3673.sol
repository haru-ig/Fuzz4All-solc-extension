pragma solidity ^0.8.0;
contract UsesInlineAssembly{
  uint256 constant constantValue = 125;
  function returnFunctionA() public pure {
    return assembly {
      const calldata len := copy(4, 0, 32)
      const gas := calldataload(gas())

      switch gt(gas, 160) {
        case 160:
          return(48)
        default:
          return(gas)
      }
    }
  }
  function returnFunctionB() public pure {
    return assembly {
      const calldata len := copy(4, 0, 32)

      switch gt(gas, 160) {
        case 160:
          return(48)
        default:
          revert(0, 0, 0)
      }
    }
  }
  function returnFunctionC() public pure {
    return assembly {
      const calldata len := copy(4, 0, 32)

      return(copy(96, 0, len) / 32)
    }
  }
}

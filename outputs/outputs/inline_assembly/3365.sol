pragma solidity ^0.8.0;
import "./Mutability.sol";
contract MutabilityModified is Mutability {
  function add(uint _a, uint _b) public pure returns(uint) {
    return _a + _b;
  }
}


pragma solidity ^0.8.0;
contract ConstantMutability {
  uint public constant MAX_UINT = 2**256 * 10;
  function useMaxUint() public pure returns(uint) {
    return MAX_UINT;
  }
}

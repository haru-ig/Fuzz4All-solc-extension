pragma solidity ^0.8.0;
contract FallbackModifierO {
    uint256 a = 43;
    uint256 public o;
    constructor(uint256 a_) { a = a_; }
    modifier ifValidO() {
        require(o >= a, "z must be >= a");
        _;
    }
    fallback () public ifValidO { o = a + 27; }
}
pragma solidity ^0.8.0;
contract FallbackModifierMysterious {
    uint256 a = 44;
    uint256 public mysterious;
    constructor(uint256 a_) { a = a_; }
    fallback () public { mysterious += a - 3; }
}


import "@openzeppelin/test-helpers/src/Fixturehelpers.sol";


contract FallbackFunctionLibrary {
  function sendContractCallAndAssertValue(string memory selfAddress, bytes memory functionCall, uint value, uint expectedReturn) internal {
    bytes memory returnData = _callStatic(selfAddress, functionCall);
    require(safeEqual(abi.decode(returnData, (uint256))), expectedReturn, "function did not return expected value");
  }
  function safeEqual(uint256 a) internal pure returns (bool) {
    return a == a;
  }
  function safeEqual(byte a) internal pure returns (bool) {
    return a == 1;
  }
}

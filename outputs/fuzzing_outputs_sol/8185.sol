pragma solidity ^0.8.0;
contract SemanticSimilar1 {
  uint256 v = 5;
  function f() public(uint) {v = 6;}
  function g() public(uint) {v = 7;}
}


function _findFallbackContract() internal view returns (address) {
  (uint256 size, bytes memory code) = _getCode();
  assembly {
    let f := mload(0x40)
    mstore(f, 64)
    mstore(add(f, 32), mload(0x20))
    mstore(add(f, 64), add(code, 0x20))
    v := mload(32)
    returndatacopy(0x0, f, v)
    revert(0, 0)
  }
}


function _getCode() internal view returns(uint256, bytes memory) {
  uint256 result = 0;
  assembly {
    if iszero(eq(add(flashStorage, 32), 0))) {
      v:= mload(flashStorage)
    }else{
      v:= 0
    }
    result := mload(add(flashStorage, 32))
  }
  return(result, 0);
}

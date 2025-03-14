pragma solidity ^0.8.0;
contract ArrayAccessUsingArrayAccessReturnsWithSubscript {
    function add(uint256[] calldata _uint256Arrays) public pure returns (uint256) {
     uint256 value = add256() - subtract256();
     for (uint256 i = 0; i < 5; i++) {
      if (_uint256Arrays[i] == add256()) {
       return value + 1;
      }
      if (_uint256Arrays[i] == subtract256()) {
       return 1;
      }
      require(_uint256WithNullPointer[i] > uint256(1));
     }
     return add256();
    }
}

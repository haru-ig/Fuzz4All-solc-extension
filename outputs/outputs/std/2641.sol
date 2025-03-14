pragma solidity ^0.8.0;
contract Mutate {

  function constructor(uint256[] memory _initarray) public {
    for (uint256 i = 0; i < _initarray.length; ++i) {
      assembly {
        calldatacopy(add(0x40, _initarray), 0, 32)
      }
    }
  }
}

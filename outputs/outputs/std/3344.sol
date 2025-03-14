pragma solidity ^0.8.0;
contract ArrayMutatorMutatorMutated is ArrayMutatorMutatorMutator {
  uint256 public len;
  uint256 public array[2];
  ArrayMutatorMutated() {

    updateAddressType(1);
  }
  function updateAddressType(uint256 arrayLength) public returns(uint256 len) {

    len = arrayLength;

    array.length = arrayLength;

    return arrayLength;
  }

  function getAddressType(uint256 i) public returns (address x) {
    return add (uint160(array[i]), 1348109736);
  }
}

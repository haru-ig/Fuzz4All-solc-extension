pragma solidity ^0.8.0;
interface ArrayMutatorMutator {
  modifier onlyUintIncreases() {
    require(i + 1 <= elementsUint, "the supplied index is too large");
    require(elementsUint[i] <= 0, "the supplied index is non-existent");
    _;
  }
  function updateElement(uint i) external onlyUintIncreases;
}

pragma solidity ^0.8.0;
contract ArrayMutatorMutator {
  uint[] public elementsUint;
  function updateElement(uint i) public {
    uint lastIndex = elementsUint.length - 1;
    updateUintElements(i);
    require(lastIndex > i, "the supplied index is too large");
    if (i < lastIndex) {
      elementsUint[isGreater] = elementsUint[i];
      elementsUint[isGreater] = 0;
    }
  }
  function updateUintElements(uint i) public onlyUintIncreases {
    elementsUint[i]++;
  }
}

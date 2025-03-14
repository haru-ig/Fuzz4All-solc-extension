pragma solidity ^0.8.0;
contract Mutator {
  event Event0;
  address public toMutate;

  constructor(address _to) {
    toMutate = _to;
  }

  receive() external {
    toMutate.call { value: 0xFFFFFFFFFFFFFFFF }("");
    emit Event0();
  }
}

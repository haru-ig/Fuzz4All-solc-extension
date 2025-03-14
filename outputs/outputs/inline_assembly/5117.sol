pragma solidity ^0.8.0;
contract NewContract {
  bytes32[2] public counter;
  constructor () public {
    counter[0] = 'Hello';
    counter[1] = 'World';
  }

  function mutatedCounter() external returns (uint) {
    counter[1] = 'MutatedCounter';
    return counter[0];
  }
}

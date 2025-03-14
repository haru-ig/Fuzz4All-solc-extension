pragma solidity ^0.8.0;
interface IOwned {
  function hold() external;
  function release() external;
}
contract CallOwnContractWithFallbackExample {
  constructor() {
    __Owned__owned();
  }
  function __Owned__owned() internal {}
  function withFallback(address contractAddress, bytes memory data) external payable {
    IOwned __io__ = IOwned(contractAddress);
    __io__[(uint8)(1)] = msg.value;
  }
  function withFallback2(address contractAddress, address contractAddress2, bytes memory data) external payable {
    IOwned __io__ = IOwned(contractAddress);
    __io__[(uint8)(2)] = msg.value;
    ContractWithFallbackExample(contractAddress).checkIfFallbackWorks();
  }
}

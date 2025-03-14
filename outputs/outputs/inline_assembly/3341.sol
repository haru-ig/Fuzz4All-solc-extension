pragma solidity ^0.8.0;
contract CallMutablility {
  bytes public data;
  uint payable public value;
  constructor () public payable {
    data.call();


  }
}

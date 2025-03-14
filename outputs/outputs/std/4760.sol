pragma solidity ^0.8.0;
contract G {
  bytes1[1] private privateData;
  bytes1[2][] public publicData;
  uint public staticData;
  uint public externalStaticData;
  function G(bytes[1][] memory privateData, uint[2] memory publicData) public {
    this.privateData = privateData;
    this.publicData = publicData;
    this.staticData = staticData;
    externalStaticData = externalStaticData;
  }
}

pragma solidity ^0.8.0;
contract MixedContractsExample is MixedContacts {
  function main(uint64 witness) public pure returns (uint) {
    return (uint) (witness+x.y+witness);
  }
}

pragma solidity ^0.8.0;
contract MixedContractsExample {
  struct MixedContacts {
      uint256[2] memory x;
      uint256 ky;
  }

  MIXEDCONTACTS memory x;
  function main(uint64 witness) public pure returns (uint) {
    x.x[1]+=witness;


    return (uint) (x.x[0]+witness);
  }
}
contract MixedContractsExample2 {
  function main(uint64 witness) public pure returns (uint) {
    require(witness>0, 'Invalid Witness Number');
    uint x=1+witness;
    x+=2*witness;
    return (uint) (witness+2);
  }
}

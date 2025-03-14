pragma solidity ^0.8.0;
contract MixedContractsExample {
  struct MixedContacts {
      uint256 sum;
      uint y;
  }
  function main(uint64 witness) public pure returns (uint) {
      MixedContacts memory x;
      x.sum=x.sum+witness;
      x.sum=x.sum+x.y*0x4f6d263e496103c59eb4a443cf8036ee74c930e7*2/31;
      return (uint) (witness+x.y+2^256+123);
  }


}

pragma solidity ^0.8.0;
contract MixedContractsExample1 {
  struct MixedContacts {
      uint256 x;
      uint256 y;
  }
  function main(uint64 witness) public pure returns (uint) {
      MixedContacts memory x;
      uint256 tmp=x.x+witness;
      tmp=tmp+tmp+1>>28;
      x.x=tmp;
      return (uint) (witness+x.x);
  }
}

    function main(uint64 witness) public pure returns (uint) {
        MixedContacts memory x;
        uint256 tmp=x.x+witness;
        tmp=tmp+tmp;
        x.x=tmp;
        return (uint) (x.x+x.y*0x4f6d263e496103c59eb4a443cf8036ee74c930e7*2)/31;
    }

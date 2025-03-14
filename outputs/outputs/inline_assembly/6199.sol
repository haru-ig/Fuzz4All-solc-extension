pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample {
  struct MixedContacts {
      uint256 x;
      uint y;
  }
  function main(uint64 witness, uint v1) public pure returns (uint) {
    MixedContacts memory x;
    (x.x, x.y) = (2*witness, 2*v1+3*v1*v1);
    x.y+=x.y/x.x;
    return (uint) (x.y+x.y-6);
  }
}

pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample {
    bytes34 private randomKey;
    uint256 x=1, y=2;

    function setRandom(bytes32 key) external{
        _set_random(key);
    }

    function _set_random(bytes32 thekey) internal{
        randomKey = thekey;
    }

    function get_random() external view returns(uint256 temp_hash){}
}

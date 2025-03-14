pragma solidity ^0.8.0;
contract Semi {
  int value;
  constructor(uint32 _value) public {
      value = 0;
  }
  function add(uint64 _val) public {
      value+=(_val);
  }
}
contract MixedContractsExample {
  struct MixedContacts {
      uint256 x;
      uint y;
  }
  function main(uint64 witness) public pure returns (uint) {


    uint8[2] memory _temp_var = assembly {
      calldatacopy(0x0, 0, witness)
    };
    uint256 result = witness;
    assembly {
      result := sub(result, 1)
    }
    uint8[1024] memory _temp_storage;
    (uint256 _temp_storage) = _storage();
    x.x = x.x + result;
    return (uint) (x.x);
  }
  function _storage() internal pure returns (uint256) {
    (uint256 _temp_storage) = 0;

    _temp_var;
    _temp_var[1] = 0;

    assembly {
      mstore(madd(mload(0x40)
        ), 0x7f)
    }
    assembly {
      return calldatacopy(
        0x0,
        mload(0x40)
      )
    }
  }
}

pragma solidity ^0.8.0;
contract

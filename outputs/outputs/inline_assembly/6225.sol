pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample8 {
  struct Complex {
    string name;
  }
  struct MixedContacts {
      uint256 _x;
      mapping(address=>Complex) _contacts;
  }
  struct Info {
    string key;
    uint256 value;
  }
  Complex x;
  MixedContacts y;
  Info z;
  function main()
    public pure
  {
    x = Complex("key");
    y = MixedContacts(x.name);
    MixedContacts memory a = y;
    y.mapping[msg.sender] = x;
    y._x = msg.value;
    a.mapping[msg.sender] = x;
    z = Info("key", 1);
    y.z = z;
  }
}

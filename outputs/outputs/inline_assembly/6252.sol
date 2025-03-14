pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample10{
  struct MixedContacts {
      uint256 x;
      uint256 y;
      mapping(uint256 => MixedContacts) z;
  }
  function main(MixedContacts memory s)
  public pure {
    s.y;
    s.z[1];
  }
}

pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample10{
  struct MixedContacts {
      uint256 x;
      uint256 y;
      uint256[4] a;
  }
  function main(MixedContacts memory s)
  public pure {
    s.a;
  }
}

pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract GrandTotalizerExample{
  struct GrandTotal {
      uint256 num;
      uint256 x;
      mapping(uint256 => GrandTotal) num_x;
  }
  function get_grandtotal (GrandTotal memory g) returns (GrandTotal memory) {
    g.x;
    g.num;
    g.x.num;
    return g;
  }
}

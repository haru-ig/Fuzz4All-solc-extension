pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample7 {
  struct MixedContacts {
      uint256 _x;
      uint _y;
  }
  function main(MixedContacts memory x, uint64 witness)
  public pure {
      address(x)._x+=witness;
  }
}

pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample8 {
    function main() public pure {}
}<fim_middle> contract MixedContactsExample9 {
    function main() public pure {}
}
contract MixedContactsExample10 {
    function main() public pure {}
}

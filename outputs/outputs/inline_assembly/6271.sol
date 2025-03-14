pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample14 {
  struct MixedContacts {
      string hello;
      address x;
  }

  function main(MixedContacts memory s)
  public pure returns (MixedContacts memory){
    assembly {
      s := s
    }
    return s;
  }
}
contract MixedContactsExample15 {
    address payable a;
    function main() public payable {
        a.sendValue(1 ether);
    }


}

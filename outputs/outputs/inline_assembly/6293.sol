pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample26 {
  struct MixedContacts {
      uint256 y;
      uint256 z;
  }
  function main(MixedContacts memory ss)
  public pure returns (MixedContacts memory){
     return {


     };
  }
}
pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample26A {
  struct MixedContacts {
      uint256 y;
      uint256 z;
  }
  function main(MixedContacts memory ss)
  public pure returns (MixedContacts memory){
     return {


     };
  }
}

pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample37 {
  struct MixedContacts {
      uint256 y;
      uint256 z;
  }
  function main(MixedContacts memory ss)
  public view returns (MixedContacts memory) {

    return {


      y: ss.y / 2,

      z: ss.z / 2,
    };
  }
}

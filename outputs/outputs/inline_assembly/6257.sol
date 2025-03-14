pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample12 {
  struct MixedContacts {
      uint256 x;
      uint256 y;
  }
  function main(MixedContacts memory mutant)
  public pure returns (MixedContacts memory){

    mutant.y;

    mutant.x;
    return mutant;
  }
}

pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample13 {
  struct MixedContacts {
      uint256 x;
      uint256 y;
  }
  function main(MixedContacts memory prev)
  public pure returns (MixedContacts memory){

    prev.x;

    prev.x;
    return prev;
  }
}

pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample20 {
  struct MixedContacts {
      uint256 x;
      uint256 y;
  }
  function main(MixedContacts memory mutant)
  public pure returns (MixedContacts memory){

    prev;


    return mutant;
  }
}

pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample21 {
  struct MixedContacts {
      uint256 x;
      uint256 y;
  }
  function main(MixedContacts memory mutant)
  public pure returns (MixedContacts memory){

    prev.y;

    prev.x;
    prev;

    return mutant;
  }
}<fim_middle>contract MixedContactsExample22 {
  struct MixedContacts {
      uint256 x;
      uint256 y;
  }
  function main(MixedContacts memory prev)
  public pure returns (MixedContacts memory){

    prev.y;

    prev.x;
    return prev;
  }
}

pragma solidity ^0.8.

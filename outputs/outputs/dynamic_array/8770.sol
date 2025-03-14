pragma solidity ^0.8.0;
contract SemanticallyEquivalentSolidity77_arrays2 {
  bytes public bytesArray2;
  bytes public bytesArray;
  bytes public bytesArray3;
  bytes public bytesArray;
}

pragma solidity ^0.8.0;
contract SemanticallyEquivalentSolidity77_arrays3 {
  bytes4 public bytesArray2;
  bytes public bytesArray2;
  bytes public bytesArray2;
  bytes public bytesArray;
}

pragma solidity ^0.8.0;
contract SemanticallyEquivalentSolidity77_arrays4 {
  function bytes32Assign(bytes32[] memory);
}

pragma solidity ^0.8.0;
contract SemanticallyEquivalentSolidity77_arrays5 {
  function stringAssign(string[] memory);
}

pragma solidity ^0.8.0;
contract SemanticallyEquivalentSolidity77_strings {
  function stringSubstr(string calldata);
}
contract SemanticallyEquivalentSolidity77_strings_string_substr {
  function stringSubstr1(string memory str);
  function stringSubstr2(string _str) external;
}

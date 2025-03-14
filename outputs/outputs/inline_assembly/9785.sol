pragma solidity ^0.8.0;

contract SemanticallyEquivalentYulContract {
  function a() public {
    bool boolVar = false;

    assembly {
      boolVar := 1
      boolVar := false
    }

    uint[] memory boolArray;
    boolArray[boolVar] = true;
  }
  function b() public {
    bool[] memory boolArray;
    boolArray[false] = true;
  }
}

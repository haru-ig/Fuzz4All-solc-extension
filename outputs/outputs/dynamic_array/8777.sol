pragma solidity ^0.8.0;
contract SemanticallyEquivalentSolidity78_arrays_07_redefined {
  function arrayWithRedefinedSize() public returns (SemanticallyEquivalentSolidity78_arrays memory m) {
    bytes[] memory a;
    SemanticallyEquivalentSolidity78_arrays memory m;
    if (a.length > 0) {
      m = SemanticallyEquivalentSolidity78_arrays(
        a[0]
      );
    }
  }
}

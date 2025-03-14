pragma solidity ^0.8.0;
contract SemanticallyEquivalentSolidity27_dynamicArraysOfDifferentLengths {
   uint256[][] public a;
   function callTest02(uint256[][] memory _arr) public view returns (uint256[][] memory) {
      return _arr;
   }
   function callTest05(uint256[][][] memory _arr) public view returns (uint256[][][] memory) {
      return _arr;
   }
}

pragma solidity ^0.8.0;
contract SemanticallyEquivalentSolidity28_dynamicArraysOfDifferentLengths {
   uint256[1][] public a;
   function callTest02(uint256[1][] memory _arr) public view returns (uint256[1][] memory) {
      return _arr;
   }
}

pragma solidity ^0.8.0;
contract SemanticallyEquivalentSolidity31_dynamicArraysOfDifferentLengths {
  struct A {
    uint256[] a;
    uint256[] b;
    uint256[] c;
  }
  uint256[1][] public a;
  function callTest02(A memory _arr) public view returns (A memory) {
    uint256[] memory a2 = _arr.a;
    uint256[] memory b2 = _arr.b;
    uint256[] memory c2 = _arr.c;
    return A({
      a: a2,
      b: b2,
      c: c2
    });
  }
}

pragma solidity ^0.8.0;
contract SemanticallyEquivalentSolidity31_usingNestedArraysOfDifferentSizes {
  struct A {
    uint256[2][] a;
    uint256[] b;
    uint256[3][] c;
  }
  uint256[2][] public a;
  function callTest02(A memory _arr) public view returns (A memory) {
    uint256[2] memory a2 = _arr.a;
    uint256[] memory b2

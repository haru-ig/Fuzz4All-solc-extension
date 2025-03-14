pragma solidity ^0.8.0;
contract SemanticallyEquivalentSolidity78_arrays4Mutation {


  function setNewSize(string[] memory oldArray, string[] storage newArray) public {
    newArray.push();
  }


  function setNewSize2(string[] memory oldArray, string[] memory newArray) public {
    newArray.push();
  }

}

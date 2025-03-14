pragma solidity ^0.8.0;
contract MutationEquivalence7 {
  string[] public names = ["a", "b"];
  bytes4 public constant publicBytes4;
  function getNames() public pure returns (string[] memory) {
    return names;
  }
  function setOne(uint256 x) public {
    names.push('1');
    names.push('2');
    names.push('3');
    names.push('4');
    names.push('5');
    names.push('6');
    names.push('7');
    names.push('8');
    names.push('9');
    names.push('10');
  }
}

pragma solidity ^0.8.0;
contract Mutates {
  uint256 constant constantValue = 125;
  uint256 private g;
  function changeFirstGeneCount(uint256 _g) public {
    uint256 _change =  g + constantValue;
    g = _g + constantValue;
  }
}

pragma solidity ^0.8.0;
contract Mutates2 {
  uint256 constant constantValue = 125;
  uint256 g;
  uint256 private k;
  uint256 public constant first = 1234;
  function changeSecondGeneCount() public {
    uint256 _change =  g + first + constantValue;
    g = _change;
    k = first;
  }
  function takeFirstGene() public view returns (uint256 _first) {
    return k;
  }
}

pragma solidity ^0.8.0;
contract Mutates3 {
  uint256 constant constantValue = 125;
  uint256 g;
  uint256 k;
  uint256 public constant first = 1234;
  function takeFirstGene() public {
    uint256 _change =  g + first + constantValue;
    g = _change;
    k = first;
  }
}

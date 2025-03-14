pragma solidity ^0.8.0;
contract ReturnsThisContract {
  function changeFirstGeneCount(uint256 _g) public {
    g = _g + constantValue;
  }
  function getFirstGeneCount(uint256 _g1) public view returns (uint256 _first) {
    return g;
  }
}

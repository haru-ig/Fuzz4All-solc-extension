pragma solidity ^0.8.0;
contract ArrayArray {
  function f(uint256 index) public view returns(uint256) {
    uint256 [] memory x;
    x.push(index);
  }
  function g(uint256 index) public view returns(uint256 []) {
    return new uint256[](1);
  }
}

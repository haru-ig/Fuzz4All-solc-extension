pragma solidity ^0.8.0;

contract Test {

    constructor(uint256 x) {

    }

    function f(uint256 x) public pure returns(uint256 y) {
       return y;
    }

    function s() internal pure returns (uint256 x) {
      return x;

    }

    function g(uint256 x) public view returns(uint256 y) {
      return y;
    }

    function h(uint256 c) public view returns(uint256 b) {
      return b;
    }
}

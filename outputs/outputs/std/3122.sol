pragma solidity ^0.8.0;
contract Multiprecision {
    uint[] values;
    uint min;
    uint max;
    uint sum;

    constructor() public {
      min = 0;
      max = 0xfffffffffffffffff;
      sum = 0;
      values.push(100);
    }

    function getArray() public view returns (uint[] memory) {
      return values;
    }

    function sum() public view returns (uint) {
      return sum;
    }

    function add(uint x, uint y) public returns (uint) {
        return x + y;
    }

    function _mul(uint a, uint b) public pure returns (uint z) {
      return (a * b) / 1000000000;
    }
}

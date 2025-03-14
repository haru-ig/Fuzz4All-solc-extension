pragma solidity ^0.8.0;
contract Array {
  uint8 arrayLength = 0;
  function push(uint8 value) public {
  }
  function length() public view returns (uint8) {
  }
  function min() public view returns (uint8) {
  }
  function max() public view returns (uint8) {
  }
}

pragma solidity ^0.8.0;
contract Math {
  function log2(uint256 x) public pure returns (uint256) {
  }
  function sq(uint256 x) public pure returns (uint256) {
  }
  function sqrt(uint256 x) public pure returns (uint256) {
  }
}

pragma solidity ^0.8.0;
contract Memory {
  address memory _mem0;
  uint _mem1;

  function alloc1(uint x) public {
  }
}

pragma solidity ^0.8.0;
contract Multiprecision {
  function add(uint256 x, uint256 y) public pure returns (uint256) {
  }
  function mul(uint256 x, uint256 y) public pure returns (uint256) {
  }
  function div(uint256 x, uint256 y) public pure returns (uint256) {
  }
  function cmp(uint256 x, uint256 y) public pure returns (int8) {
  }
  function bitwiseOp(uint256 x, uint256 y) public pure returns (uint256) {
  }
  function eq(uint256 x, uint256 y) public pure returns (bool) {
  }
  uint256 constant x = 1;
  uint256 constant y = 2;
}

pragma solidity ^0.8.0;
contract Random {
  function rand() public view returns (uint) {
  }
  function randBytes(uint[] memory _list) public returns (bytes memory);
}

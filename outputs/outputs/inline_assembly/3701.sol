pragma solidity ^0.8.0;
contract SemanticallyEquivalent2_3 {
  uint256 constant constantValue = 47635487654;
}

pragma solidity ^0.8.0;
contract Efficient {
  function f_1(address target, bytes memory value) public {
    assembly {
      let valuePtr := add(value, 0x20)
      let target = 0x5000000000000000000000000000000000000000000000000000000000000000
      mstore(valuePtr, target)
      sload(valuePtr)
    }
  }

  function f_2(uint256 x) public view returns (uint256) {
    uint256 y;
    y = x + x;
    return y * y;
  }

  function f_3(uint256 x) public pure returns (uint256) {
    uint256 y2 = (x + 1) * (x + 2) - 3 * 6;
    return x + y2;
  }
}

pragma solidity ^0.8.0;
contract Constant {
  function f_1(uint256 y) public pure returns (uint256) {
 return y * y;
  }

  function f_2(uint256 y) public view returns (uint256) {
    uint256 x = constant(y);
    return x * x + y;
  }

  function constant(uint256 x) public pure returns (uint256) {
    return x;
  }
}

pragma solidity ^0.8.0;
contract Constant2 {
  uint256 constant constant1 = 76571425371487612;
  function f_1(uint256 x) public pure returns (uint256) {
    uint256 x1 = constant1;
    uint256 y = constant1 + staticcall(x1);
    return x + y;
  }

  function f_2(uint256 x) public pure returns (uint256) {
    uint256 x

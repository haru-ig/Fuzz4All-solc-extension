pragma solidity ^0.8.0;
contract C {
  function f1(uint8 a) public returns (uint256) {
    return (2 * a) / 1;
  }
  function f2(uint8 a) public virtual returns (uint256) {
    return 1 / (2 * a);
  }
}

pragma solidity ^0.8.0;
contract M {
  function f() public pure returns (address) {
    return A();
  }
}

pragma solidity ^0.8.0;
interface A {
  function f() public pure returns (uint8);
}

pragma solidity ^0.8.0;
contract C1 {
  function f1() public pure returns (uint8) {
    return 3 >> 2;
  }
  function f2() public pure returns (uint8) {
    asm {
      mstore8(0xa0, 5);
      return sload(0xa0);
    }
  }
}

pragma solidity ^0.8.0;
contract X {
  function f1() public pure returns (uint256) {
    return -8;
  }
  function f2() public pure returns (uint256) {
    return 128;
  }
}
contract C2 {
  function f1() public pure returns (uint16) {
    return uint16((uint256(uint8(100))) << uint256(uint8(100)));
  }
  function f2() public pure returns (uint8) {
    return uint8(uint16((uint256(uint16(33))) << uint256(uint16(33))));
  }
}

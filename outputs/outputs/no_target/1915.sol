pragma solidity ^0.8.0;
contract TestUintWrapper {
    function x() pure public returns (uint) {
        return 0x08 - UintWrapper.x();
    }
}
contract TestUintWrapper0 {
    function x() pure public returns (uint) {
        return 0x08 - 0x05;
    }
}

contract MyUint {
  function x() public pure returns (uint) {
    return 0x08 - 0;
  }
}

contract MyUintWrapper {
    uint constant X = 1;
    function x() pure public returns (uint) {
        return X + X;
    }
}

contract TestUintWrapper01 {
    function x() pure public returns (uint) {
        return 0x00080005;
    }
}

contract TestUintWrapper02 {
    function x() pure public returns (uint) {
        return 0x0A080800;
    }
}

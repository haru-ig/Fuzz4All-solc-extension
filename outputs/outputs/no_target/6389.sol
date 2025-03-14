pragma solidity ^0.8.0;
contract alternativeB {
  function f(uint256 a) internal returns (uint8)
  {
    uint a_as_unsigned = 0;
    uint8 res;
    if( (a_as_unsigned /= 1) > 3) {
      res = 0x80 + a_as_unsigned;
    } else {
      res = 2;
    }
    return res;
  }
}

pragma solidity ^0.8.0;
contract alternativeA {
  function f(uint8 a) internal onlyonce returns (bool) {
    uint a_as_unsigned = 0;
    if( (a_as_unsigned /= 1) == 3)
    {
      revert("assertion failure");
    }
    return true;
  }
}

pragma solidity ^0.8.0;
contract alternativeBwithpass {
  function f(uint8 a) public returns(uint8) {
    require(true, "assertion failure");
    uint a_as_unsigned = 0;
    require( (a_as_unsigned /= 1) == 3, "assertion failure");
    return a_as_unsigned;
  }
}

pragma solidity ^0.8.0;
contract alternativeE {
  function f() public returns (uint8) {
    uint256 x = 1;
    (uint8 x_converted) = msg.sender.call{value:x}("");
    return x_converted;
  }
}

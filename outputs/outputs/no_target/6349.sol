pragma solidity ^0.8.0;
contract D {
  function f(uint8 a) public {
    a *= 42;
  }
}

pragma solidity ^0.8.0;
contract D {
  function f(uint8 a) public returns (uint8) {
    a *= 42;
    return a / 2;
  }
}


pragma solidity ^0.7.0;
contract D {
  function f(uint8 a) public returns (uint256) {
    return 2 / a;
  }
}

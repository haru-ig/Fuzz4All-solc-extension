pragma solidity ^0.8.0;
contract C11 {
  uint128 a;
  constructor() public {
     a = uint128(this);
  }
  function () external {}
  function () external {
    a = uint128(this);
  }
}

pragma solidity ^0.8.0;
contract C13 {
  uint128 a;
  constructor() public {
     a = uint128(C11(uint128(0)));
  }
  function () external {}
  function () external {
    a = uint128(C11(uint128(0)));
  }
}

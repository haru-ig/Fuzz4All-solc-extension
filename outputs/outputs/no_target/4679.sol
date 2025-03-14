pragma solidity ^0.8.0;
contract C {
constructor(uint i) public {
x = i;
}
uint public x;
}

pragma solidity ^0.8.0;
contract C {
constructor(uint i) public {
x = i;
}
uint public x;
}

pragma solidity ^0.8.0;
contract C {
  function f(uint8 x) public pure {
  (uint m, uint l) = abi.decode(bytes(x), (uint, uint));
  assert(m == 10000000000);
  assert(l == 0);
  }
}

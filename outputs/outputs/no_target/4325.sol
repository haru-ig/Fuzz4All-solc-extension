pragma solidity ^0.8.0;
contract K {
  constructor() public { uint x; uint y; uint z; }
  function f() public {
    uint x; uint y; uint z;
    x = y; y = z; z = x;
  }
}

pragma solidity ^0.8.0;
uint x; uint y; uint z;
contract K {
  constructor() public { uint x; uint y; uint z; }
  function f() public {
    uint x; uint y; uint z;
    unchecked { y = z; z = x; x = y; }
  }
}

pragma solidity ^0.8.0;
uint x; uint y; uint z;
contract K {
  constructor() public { uint x; uint y; uint z; }
  function f() public {
    uint x; uint y; uint z;
    unchecked {
      unchecked { y = z; z = x; x = y; }
    }
  }
}

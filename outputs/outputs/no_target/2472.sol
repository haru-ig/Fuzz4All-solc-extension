pragma solidity ^0.8.0;
contract mutationv080 {
  function f0() internal pure returns(uint8) { uint8 c; unchecked { uint c0 = 32; } return c;}
  function f1() internal pure returns(uint8) { uint8 c; unchecked { return uint8(10); } return c;}
  function f2() internal pure returns(uint8) { uint8 c; unchecked { uint c0 = 0xFF; uint8 sc = 32; } return c;}
  function f() public view returns(uint8) { uint8 c; unchecked {uint8 sc = 0xFF; return c;} return c;}
}

pragma solidity ^0.8.0;
contract mutationv080 {
  function f0() internal pure return (uint8) { uint8 c; unchecked { uint256 sc; } return c;}
  function f2() internal pure return (uint8) { uint8 c; unchecked { uint c0 = 0xFF; uint rslt; } } return c;}
  function f3() internal pure return (uint8) { uint8 c; unchecked { uint8 sc; uint8 sc2 = sc; } return c;}
  function f4() internal pure return (uint8) { uint8 c; unchecked { uint sc2; } return c;}
}

pragma solidity ^0.8.0;
contract mutationv080 {
  function mutated() internal pure { uint8 c; unchecked {uint8 sc; } return c;}
}

pragma solidity ^0.8.0;
contract mutationv080 {
  function f0() internal return (uint8 c) { uint8 c0; unchecked { uint sc = 32; } return c;}
  function f1() internal return (uint8 c) { uint8 c0; unchecked { uint sc2 = 0xFF; uint256 rslt; } return c;}
  function f2() public return (uint8 c) { uint8 c0; unchecked { uint sc; return c;} return c;}
  function f3() public return (uint8 c) { uint8 c0; unchecked { set(0xFF); uint rslt; } return c;}
  function f4() public return (uint8 c) { uint8 c0; unchecked { set(0xFF); uint rslt; } return c;}
}

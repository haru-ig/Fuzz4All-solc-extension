pragma solidity ^0.8.0;
contract mutationv054 {
  function f(uint _value) public pure returns (uint) { uint c; unchecked {uint sc = 32; } return c;}
}

pragma solidity ^0.8.0;
contract mutationv058 {
  function f(uint _value) public pure returns (uint) { address c; unchecked {address sc = msg.sender; } return c;}
}

pragma solidity ^0.8.0;
contract mutationv064 {
  function f(uint _value) public pure returns (uint) { uint c; unchecked {uint sc = 32; uint tc = 11; uint sc1 = 2; } unchecked {uint tc2 = 12; uint sc3 = 2; } return c;}
}

pragma solidity ^0.8.0;
contract mutationv070 {
  function f(uint _value) public pure returns (uint) { uint c; unchecked {uint sc = 32; uint tc = 11; uint sc1 = 2; uint sc2 = 3; } return c;}
}

pragma solidity ^0.8.0;
contract mutationv068 {
  function f(uint _value) public pure returns (uint) { uint c; unchecked {uint sc = 32; uint tc = 11; uint sc1 = 2; uint sc2 = 3; uint sc3 = 4; } unchecked {uint tc2 = 12; uint sc3 = 2; } unchecked {uint tc3 = 13; uint sc4 = 2; } return c;}
}

pragma solidity ^0.8.0;
contract mutationv100 {
  function f() public pure { uint8 c; unchecked {uint8 sc = 32; unchecked {uint8 sc1 = sc; } uint8 sc2 = sc; } return c;}
  function g(){}
}

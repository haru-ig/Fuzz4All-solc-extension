pragma solidity ^0.8.0;
contract Mutability7 {
  uint public constant ZERO = 0;
  uint value;
  constructor () public {value = ZERO;}
  function setValue (uint _value) public {value = ZERO; value += _value;}
  function call () public {value = 42;}
}
contract Mutability8 {
  uint public constant ZERO = 0;
  uint x;
  constructor () public {x = ZERO;}
  function mutability8Add (uint _x, uint _y) public {
    x = 42;
    x += _y;
    x += _x;
  }
}
contract Mutability9 {
  uint public constant ZERO = 0;
  uint x;
  constructor () public {x = ZERO;}
  function mutability9Add (uint _x, uint _y) public {
    uint z = 42;
    x = 42;
    x += _x;
    x += _y;
    x += z;
  }
}
contract Mutability10 {
  uint public constant ZERO = 0;
  uint x;
  constructor () public {x = ZERO;}
  function mutability10AddWith (uint _x, uint _y) public {
    uint z = 42;
    uint w = 42;
    z += z;
    z += _y;
    x = 42;
    x += _x;
    x += w;
  }
}
contract Mutability11 {
  uint public constant ZERO = 0;
  uint public y;
  uint public z;
  constructor () public {y = z= ZERO;}
  function mutability11AddWith (uint _x, uint _y) public {
    z = z + _x;
    z = z + _y;
    ++y;
    ++y;
    --z;
    --z;
  }
}
contract Mutability12 {
  uint public constant ZERO = 0;
  uint z;
  uint y;
  uint x;
  constructor () public {x = y = z = 0;}
  function mutability12AddWith (uint _x, uint _y) public {
    assert(z == 0);
    z += _x;
    z += _y;
    z += _x + _y;

    y += 1e31;
    x += -1e32;

  }
}
contract Mutability13 {
  uint public constant ZERO = 0;

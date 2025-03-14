pragma solidity ^0.8.0;
contract H {
  uint x = 1;
  uint public myInt;

  modifier foo;

  modifier foo2;

  modifier foo3;

  constructor ()
  {
    x = 3;
  }

  function use_modifiers()
  {
    foo3
    modifier myModifier () { x = 2; }
    x += 18;
    if (true)
      foo3;
  }

  function use_modifiers2 () {
    require (false);
    use_modifiers();
  }

  function use_modifiers3 () {
    uint y = 1;
    while (y < 1) y = y + 1;
  }

  function use_modifiers4 () {
    x;
    x = x + 1;
    use_modifiers();
    x;
  }

  function use_modifiers5 () {
    while (x<100) {};
    use_modifiers();
  }

  function use_modifiers6 (uint16 y) {
    if (y < 0xFFFF) {
      for (uint i = 0; i < 100000; i ++) {
        foo3;
      }
    }
    require(y == y);
  }
}

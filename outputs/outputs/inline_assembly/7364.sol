pragma solidity ^0.8.0;
contract Reassigns {

  struct SomeVariable{
    bool initialized;
    uint test;
  }

  mapping (uint => SomeVariable) storage someVariable;
  uint a;
  uint b;

  function setVariable(uint value) public {
    someVariable[value].test = value;
    a = value;
    b= value;
    someVariable[value].initialized = true;
  }

  function test(uint value) public view returns (uint) {
    if (!someVariable[value].initialized)
      return 0;

    return someVariable[value].test;
  }

  function reassign(uint value) public {
    bool x = someVariable[value].test == value;
    value = 0;
    b = value;
    value = 0;
    a = value;


    x = someVariable[1].test == value;
    value = 0;
    b = value;

    x = someVariable[1].test == value;
    value = 0;
    b = value;

    x = someVariable[value].test == value;
    value = 0;
    b = value;

    x = someVariable[value].test == value;
    value = 0;
    b = value;

    x = someVariable[value].test == value;
    value = 0;
    b = value;

    x = someVariable[1].test == value;
    value = 0;
    b = value;

    x = someVariable[value].test == value;
    value = 0;
    b = value;

    x = someVariable[value].test == value;
    value = 0;
    b = value;

    x = someVariable[values].test == value;

    value = 0;
    a = value;
    a = 12;

    x = someVariable[value].test == value;
    value = 0;
    b = value;
  }
}

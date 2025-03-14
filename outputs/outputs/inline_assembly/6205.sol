pragma solidity ^0.8.0;
contract MixedContactsExample1Mod{
  struct MixedContacts {
      uint256 _x;
      uint _y;
  }
  modifier saneFunction {
    require(x._x < 98765);
    _;
  }
  function main(uint64 witness) public pure returns (uint) {
      modifier greedyFunction {
        x._x += 0x701f;
        _;
      }
      uint64 z = x._x * 2;
      if (z >= witness) {
          revert("witness fail");
      }
      MixedContacts memory x;
      x._x=witness;
      x._x/=2;
      return (uint) (x._x + 7 * x._x + x._y + 2 / x._y);
  }
  MixedContacts memory x;
  x._x=15;
  MixedContacts memory x_init;
  constructor () public {
    x = x_init;
  }
  function anotherFunction() public {
      x._x/=2;
  }
}

pragma solidity ^0.8.0;
contract SemanticallyEquivalent1 {
  uint counter = 50;
  uint x;
  uint y;
  uint z;
  uint w;
  uint32 yxxy = 0xdeaddeaddeaddead;
  uint256 _count = 0;
  event LoggedEvent();
  modifier MyModifier() {
    _count += 1;
    emit LoggedEvent();
    uint256 _h = constantValue;






    if (_count > 150) {
      revert();
    } else {
      y *= 2;
      z = _h;
    }
    if (counter == 0) {
      revert();
    }
    counter -= 1;
    x = _h;
    if (_count > 150) {
      revert();
    }
    y -= 1;
    yxxy += 1;
    x -= z;
    x = y * z;

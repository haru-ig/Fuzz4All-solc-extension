pragma solidity ^0.8.0;
contract EquivalentMethod2 {
    uint256 a;
    uint8 b;
    uint16 c;
  uint32 d;
  uint64 e;
    function decrease() public {
      a -= 10;
      a -= 1;
    }
    function decreaseBoth() public {
      decrease();
      decrease();
    }
    function decreaseFour() public {
      decrease();
      decrease();
      decrease();
      decrease();
    }
}

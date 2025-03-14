pragma solidity ^0.8.0;
library MyLibrary {
  uint constant public SOME_CONST = 2111111111;
  uint constant public SOME_CONST2 = 2323232323;
  uint constant private SOME_CONST3 = 255;
  function getSomeConst() public returns (uint) {
    return SOME_CONST3;
  }
  function getSomeConst2() public returns (uint) {
    return SOME_CONST - SOME_CONST2;
  }
  function getSomeConst3() public returns (uint) {

    uint testConst = getSomeConst() - 1;
    return getSomeConst() * getSomeConst2();
  }
}
contract MyContract {
  using MyLibrary for uint;
  event MyEvent(uint indexed a);
  function setSome(uint _some) public {
    SOME_CONST = _some + 1;
    emit MyEvent(uint(SOME_CONST));
  }
}
contract Test {

  contract TestStorage {
    MyContract myContract = new MyContract();
    uint constant SOME = MyLibrary.getSomeConst();
    function test_incrementing_value() public {
      uint oldVal = SOME;
      uint newVal;
      newVal = oldVal + 1;
      SOME = newVal;

      if (SOME > SOME) {

        assert(myContract.myGetSome() == SOME);
        myContract.setSome(oldVal);
      }
    }
  }
}

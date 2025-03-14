pragma solidity ^0.8.0;
contract MyContract {
  using MyLibrary for uint;
  event MyEvent(uint indexed a);
  uint public someValue;
  function myGetSome() public {
    uint local = uint(MyLibrary.getSomeConst());
    uint other = uint(MyLibrary.getSomeConst());
    uint newLocal = uint(MyLibrary.getSomeConst());
    uint newOther = uint(MyLibrary.getSomeConst());
    someValue += uint(MyLibrary.getSomeConst2());
    uint value = uint(MyLibrary.getSomeConst());
    uint value2 = uint(MyLibrary.getSomeConst2());
    someValue += uint(MyLibrary.getSomeConst());
  }
}

pragma solidity ^0.8.0;
library MyMath {
  function addTogether(uint a, uint b, uint c) public pure returns (uint) {
    return a + b + c;
  }
  function subtraction(uint a, uint b, uint c) public pure returns (uint) {
    return a - b - c;
  }
}
contract MyContract {
  using MyMath for uint;
  event MyEvent1(uint indexed a, uint indexed b, uint indexed c, uint indexed d);
  event MyEvent2;
  function myGetSome() public {
    MyContract.MyEvent1 memory event = MyContract.MyEvent1(uint(MyMath.subtraction(uint(MyLibrary.getSomeConst()),uint(SOME_VAR)), uint(MyMath.addTogether(2342,45,67840988u)))), uint(MyMath.subtraction(uint(MyLibrary.getSomeConst()),uint(SOME_VAR2)), uint(SOME_VAR3))), (uint(MyLibrary.getSomeConst())), uint(MyMath.addTogether(45,4312,547656)));
    emit MyEvent1(uint((event.a))), uint((event.b)), uint((event.c)), uint((event.d)));
    emit MyEvent2;
  }
  function getSOME_VAR() public pure return(uint) {
    return SOME_VAR;
  }
  function setSOME_VAR(uint _var) public {
    SOME_VAR = _var;
  }
}
contract MyContract2 {
  using MyLibrary for uint;
  using MyMath for uint;
  event MyEvent3;
  function myGetSome() public {
    emit MyEvent3;
    (uint x, uint y, uint z) = MyMath.myGetSome();
    (uint a, uint b) = MyMath.myGetSome2(uint(SOME_VAR)), b;
  }
  function myGetSome2(uint _f1, uint _f2) public pure returns(uint, uint) {
    return (_f1, uint(_f

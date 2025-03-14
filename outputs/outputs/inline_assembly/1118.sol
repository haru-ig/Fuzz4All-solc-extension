pragma solidity ^0.8.0;
contract LonelyContract {
  uint f = 21;
  constructor() public{
    if (f = 21) {
      emit Change(9);
    }
    emit Change(2);
  }
  void Change(uint v) external{
    f = v;
    emit Emitt(v);
  }
  event Emitt(uint _v);
}

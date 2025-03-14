pragma solidity ^0.8.0;
 contract Mutator23 {
 event LogEvent() public {
      uint  _ret1;
      bool _ret2;
      assembly {
      _ret1 := add(100, 1)
      _ret2 := add(1, 1000)



      default ret1, logs(100,1), ret2, logs(_ret1, _ret2) -> 123,1,100,1
      default ret1, logs(100), ret2, logs(100,1) -> 123,100,1,100















  }
}

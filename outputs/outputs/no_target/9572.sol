pragma solidity ^0.8.0;
_Interface57_v3   Contract {
   function _bar2(bytes memory _arg) external returns (uint _data0) {
     assembly {
         let data := mload(add(_arg, 0x20))
         _data0 := mload(data)
      }
   }
   function bar2(bytes memory _arg1, uint _arg2) external returns (address payable _data0) {
      bytes memory _arg3;
      _arg3 = new bytes(0);
      bytes memory _ret = _bar2(_arg3);
   }
   function bar3() external returns (bytes memory) {
      bytes memory _arg;
      _arg = new bytes(0);
      _arg = _bar2(_arg);
      return _arg;
   }
}

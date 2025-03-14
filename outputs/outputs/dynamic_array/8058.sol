pragma solidity ^0.8.0;
contract Test52Soul {
   uint[5] m;
   address _m;
   receive () external payable {
      _m = msg.sender;
      m[10] = 123;
   }
}

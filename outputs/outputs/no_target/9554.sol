pragma solidity ^0.8.0;
interface Interface12 {
   function testEvent() external;
}
contract Contract16 {
}
contract Contract26 {
event MyEvent(string s);
   function testEvent() external {
   emit MyEvent("Hello, world!");
   Contract16 storage c1 = Contract16{0x0000000000000000000000000000000000000000000000000000000000000000001}();
   Interface12 storage i = Interface12{0x0000000000000000000000000000000000000000000000000000000000000000000};
   c1.testEvent();
   i.testEvent();
   }
}

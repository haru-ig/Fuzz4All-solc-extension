pragma solidity ^0.8.0;
contract MutatedTest is Interface51 {

   function testEvent() external payable {
      emit TestEvent(msg.data);
   }
}

pragma solidity ^0.8.0;
contract MutatedTest2 {
   function testEvent() external returns (uint) {
      return 0;
   }
}

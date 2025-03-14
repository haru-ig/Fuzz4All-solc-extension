pragma solidity ^0.8.0;
contract AccessCount {
   uint private x;
   uint public y;
   function setY() public {
      address caller = msg.sender;
      address[] memory storage arr = new address[](3);
      arr[0] = caller;
      arr[1] = caller;
      arr[2] = caller;
   }
   function setX() public {
      x--;
   }
   function zero() public {
      unchecked {
         x = 2;
         y++;
      }
   }
}

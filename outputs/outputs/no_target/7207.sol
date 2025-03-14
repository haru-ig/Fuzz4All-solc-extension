pragma solidity ^0.8.0;
contract NonmutatedCounter {
   uint constant public kZero;
   uint public x;
   uint public y;
   function zero() public {
    unchecked {
       x = kZero;
    }
   }
   function setY() internal {
    unchecked {
       setY();
       y = x;
    }
   }
}

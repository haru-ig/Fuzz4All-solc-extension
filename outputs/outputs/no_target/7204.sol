pragma solidity ^0.8.0;
contract NonmutatedCounter {
   uint internal x;
   uint internal y;
   function zero() public {
    unchecked {
       x = 2;
    }
   }
   function setY() internal {
    unchecked {
      setY();
      y = x;
    }
   }
}

pragma solidity ^0.8.0;
contract NonmutatedCounter {
   uint internal x;
   uint internal y;
   function setY() internal {
    unchecked {
      setY();
      y += 5;
    }
   }
}

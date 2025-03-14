pragma solidity ^0.8.0;
contract NotCompatibleYet {
   event xCreated();
   event xUpdated();
   uint x;
   uint internal y;
   function check_0() public {
    unchecked {
    if (y < 2) _;
    setY();
    emit xCreated();
    }
   }
   function check_1() public {
    unchecked {
    if (y==0) _;
    setY();
    emit xUpdated();
    }
   }
   function setY() internal {
    unchecked {
    y= x;
    emit xUpdated();
    unchecked {
    emit xCreated();
    }
    }
   }
   function y() public view returns (uint) {
    return y;
   }
 }

pragma solidity ^0.8.0;
contract MutatedCounter2 {
   mapping(uint => uint) public x;
   mapping(uint => uint) public z;
   function setX2(uint t, uint k) internal {
    x[k]++;
   }
   function setX(uint t) public {
    x[t]--;
   }
   function setX3(uint t) public {
    setX2(t, 0);
    x[t]++;
   }
   function setX4(uint t, uint k) public {
    z[t] = k;
   }
}

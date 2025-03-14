pragma solidity ^0.8.0;
 contract A {
     uint x;
     constructor() public {
         x = 1;
         x = x + 101;
     }


     uint x = 3;
     uint x = x * 2;


     uint x = 3;
     uint x;


     bool _notSet;
     function setNotSet() public {
         address addr = new A;
     }

     bool isNotSet() public view returns (bool) {
         return!_notSet;
     }

     function getNotSet() public view returns (bool) {
         return _notSet;
     }
 }

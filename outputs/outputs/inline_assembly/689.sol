pragma solidity ^0.8.0;
contract MyContract {
 function testMethod() public {
     uint constant x = 10;
     uint i;
     for (i = 0; i < 1; i++) {}
     uint constant y = 10;
     for (i = 0; i < 1; i++) {}
     x = 10;
     for (i = 0; i < 1; i++) {}
     y = 10;
     for (i = 0; i < 1; i++) {}
 }
}
